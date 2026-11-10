
const SHIFT_CODE = "1";
const SWITCH_LAYOUT_CODE = "2";

let keyboardInterface = {};

let keyboardLayouts = [];
let keyboardElements = [];

let selectedKeyboardIndex=0;
let keyboardIndexOffset=0;
let repeatKeyIntervalId, repeatKeyTimeoutId, stickKeyTimeoutId;
let skipKey=false;

function initializeKeyboard() {

    keyboardInterface.sendKey      = function(key    ) { sendMessage("Key "     +     key); };
    keyboardInterface.sendChar     = function(char   ) { sendMessage("Char "    +    char); };
    keyboardInterface.sendSpecial  = function(special) { sendMessage("Special " + special); };
    keyboardInterface.requestFocus = function(       ) { sendMessage("Focus"             ); };

    keyboardLayouts[0] = englishKeyboard;
    keyboardLayouts[1] = englishShiftedKeyboard;
    keyboardLayouts[2] = englishSymbolsKeyboard;
    keyboardLayouts[3] = englishSymbolsShiftedKeyboard;

    // Buffer keyboards layouts,
    selectKeyboard(1);
    selectKeyboard(0);
}

function selectKeyboard(keyboardIndex) {

    // Create a keyboard element if needed,
    if (keyboardElements[keyboardIndex+keyboardIndexOffset] == null) {
        keyboardElements[keyboardIndex+keyboardIndexOffset] = createKeyboard(keyboardLayouts[keyboardIndex+keyboardIndexOffset]);
    }

    // Attach to the document,
    const contentElement = document.getElementById("content");
    contentElement.innerHTML = "";
    contentElement.appendChild(keyboardElements[keyboardIndex+keyboardIndexOffset]);

    selectedKeyboardIndex = keyboardIndex;

    return keyboardElements[keyboardIndex+keyboardIndexOffset];
}

function loadKeyboard(keyboardFile) {

    var request = new XMLHttpRequest();
    request.open("GET", keyboardFile);
    request.overrideMimeType("application/json");
    request.onreadystatechange = function() {

        if(request.readyState === 4) {
            if(request.status === 200 || request.status == 0) {

                // Parse the file,
                return parseKeyboard(request.responseText);
            }
        }
    }
    request.send();
}

function parseKeyboard(keyboardString) {
    var keyboard = JSON.parse(keyboardString);
    return createKeyboard(keyboard);
}

function createKeyboard(keyboard) {

    // Create a keyboard div,
    let keyboardDiv = document.createElement("div");
    keyboardDiv.className = "keyboard";

    // Populate the keyboard with rows and keys,
    let keyDivs = [];
    let rowsCount = keyboard.rows.length;
    for (let j=0; j<rowsCount; j++) {

        // Create a new row,
        let row = keyboard.rows[j];
        let rowDiv = createDOMElement("div", "row", keyboardDiv);
        rowDiv.style.height = keyboard.keyHeight + "%";

        // Populate the row with keys,
        let keysCount = row.keys.length;
        for (let i=0; i<keysCount; i++) {

            // Create a new key,
            let key = row.keys[i];
            let keyDiv = createDOMElement("div", "key", rowDiv);
            keyDiv.key = key;
            keyDivs.push(keyDiv);

            // Create label,
            let labelDiv = createDOMElement("div", "label", keyDiv);

            // Style the key,
            // Label and icon,
            if (key.hasOwnProperty("icon")) {
                labelDiv.style.backgroundImage = "url(Images/" + key.icon + ".png)";
                labelDiv.className += " keyIcon";
            } else if (key.hasOwnProperty("label")) {
                labelDiv.textContent = key.label;
            } else {
                labelDiv.textContent = key.character;
            }

            // Find shift key,
            if (key.special==SHIFT_CODE) keyboardDiv.shiftKeyDiv = keyDiv;

            // Margin,
            keyDiv.style.marginLeft = key.marginLeft + "%";

            // Width,
            let keyWidth = key.hasOwnProperty("width") ? key.width : keyboard.keyWidth;
            keyDiv.style.width = keyWidth + "%";

            // Height,
            keyDiv.style.height = "100%";
        }
    }

    // Setup events,
    let touchDown = false;
    let lastKeyDiv = null;
    let mouseX = 0;
    let mouseY = 0;
    let getElementKey = function(element) {
        let keysCount = keyDivs.length;
        for (let i=0; i<keysCount; i++) {
            if (isDescendant(keyboardDiv, keyDivs[i], element)) return keyDivs[i];
        }
        return null;
    };

    let updateKeyState = function(keyDiv, mouseOver) {
        if (mouseOver) {
            if (touchDown) {
                if (keyDiv.className.includes("keyHover")) keyDiv.className = keyDiv.className.replace(" keyHover", "");
                if (!keyDiv.className.includes("keyPressed")) keyDiv.className += " keyPressed";
            } else {
                if (keyDiv.className.includes("keyPressed")) keyDiv.className = keyDiv.className.replace(" keyPressed", "");
                if (!keyDiv.className.includes("keyHover")) keyDiv.className += " keyHover";
            }
        } else {
            keyDiv.className = keyDiv.className.replace(" keyHover", "").replace(" keyPressed", "");
        }
    }

    let lastFocusTimeMillis=0;
    let processEvent = function(event, forceUpdate) {

        event.preventDefault();

        // Update mouse position,
        if (typeof event.clientX !== 'undefined') {
            mouseX = event.clientX;
            mouseY = event.clientY;
        }

        // Get the element under the mouse,
        let mouseOverElement = document.elementFromPoint(mouseX, mouseY);
        let keyDiv = getElementKey(mouseOverElement);

        // Update key state,
        if (keyDiv != lastKeyDiv || forceUpdate) {
            if (lastKeyDiv!=null) updateKeyState(lastKeyDiv, false);
            if (    keyDiv!=null) updateKeyState(    keyDiv,  true);
            lastKeyDiv = keyDiv;
        }

        // Give focus to the typing target window (throttled),
        let timeMillis = (new Date()).getTime();
        if (timeMillis-lastFocusTimeMillis >= 500) {
            lastFocusTimeMillis = timeMillis;
            keyboardInterface.requestFocus();
        }
    };

    keyboardDiv.addEventListener("mouseover" , function(event) { processEvent(event, false); }, { capture: false, once: false });
    keyboardDiv.addEventListener("mouseleave", function(event) {
        processEvent(event, false);
        removeKeyTimeouts();
    }, { capture: false, once: false });

    let mouseDownFunction = function (event) {
        touchDown = true;
        processEvent(event, true);

        // Handle repeating special keys,
        let keyDiv = lastKeyDiv;
        if ((keyDiv!=null) && (keyDiv.key.repeatable=="true")) {

            // Perform once now,
            performKeyFunction(keyDiv);

            // Schedule performing later,
            repeatKeyTimeoutId = setTimeout(function() {
                performKeyFunction(keyDiv);
                repeatKeyIntervalId = setInterval(function() { performKeyFunction(keyDiv); }, 100);
            }, 500);
        }

        // Handle heavily stuck keys (long press),
        if ((keyDiv!=null) && (keyDiv.key.sticky=="true")) {
            stickKeyTimeoutId = setTimeout(function() {
                keyDiv.key.stuck = "heavily";
                keyDiv.className += " keyStuckHeavily";
                if (keyDiv.key.special == SHIFT_CODE) {
                    keyboardIndexOffset |= 1;
                    let shiftKeyDiv = selectKeyboard(selectedKeyboardIndex).shiftKeyDiv;
                    // Set the shift key in the new layout,
                    shiftKeyDiv.key.stuck = "heavily";
                    shiftKeyDiv.className += " keyStuckHeavily";
                }
                skipKey = true;
            }, 1000);
        }
    };
    keyboardDiv.addEventListener("mousedown", mouseDownFunction, { capture: false, once: false });

    let releaseShiftKey = function() {
        let shiftKeyDiv = keyboardDiv.shiftKeyDiv;
        if (!shiftKeyDiv.key.hasOwnProperty("stuck") || shiftKeyDiv.key.stuck != "") {

            // Release shift in the current layout,
            shiftKeyDiv.key.stuck = "";
            shiftKeyDiv.className = shiftKeyDiv.className.replace(" keyStuckLightly", "");
            shiftKeyDiv.className = shiftKeyDiv.className.replace(" keyStuckHeavily", "");

            // Switch layout and release the new shift key,
            keyboardIndexOffset &= 254;
            shiftKeyDiv = selectKeyboard(selectedKeyboardIndex).shiftKeyDiv;
            shiftKeyDiv.key.stuck = "";
            shiftKeyDiv.className = shiftKeyDiv.className.replace(" keyStuckLightly", "");
            shiftKeyDiv.className = shiftKeyDiv.className.replace(" keyStuckHeavily", "");
        }
    }

    let mouseUpFunction = function (event) {
        touchDown = false;
        processEvent(event, true);

        removeKeyTimeouts();
        if ((lastKeyDiv!=null) && (lastKeyDiv.key.repeatable!="true") && !skipKey) performKeyFunction(lastKeyDiv);
        skipKey = false;
    };
    keyboardDiv.addEventListener("mouseup", mouseUpFunction, { capture: false, once: false });

    let performKeyFunction = function(keyDiv) {

        let key = keyDiv.key;

        // TODO: process special keys, sticky keys and repeat...
        if (key.hasOwnProperty("key")) {
            keyboardInterface.sendKey(parseInt(key.key));
        } else if (key.hasOwnProperty("special")) {

            // Handle sticky keys,
            if (key.sticky=="true") {

                keyDiv.className = keyDiv.className.replace(" keyStuckLightly", "");
                keyDiv.className = keyDiv.className.replace(" keyStuckHeavily", "");
                if (key.stuck && key.stuck != "") {
                    if (key.special == SHIFT_CODE) releaseShiftKey();
                    key.stuck = "";
                } else {
                    key.stuck = "lightly";
                    keyDiv.className += " keyStuckLightly";
                    if (key.special == SHIFT_CODE) {
                        keyboardIndexOffset |= 1;
                        let shiftKeyDiv = selectKeyboard(selectedKeyboardIndex).shiftKeyDiv;
                        // Set the shift key in the new layout,
                        shiftKeyDiv.key.stuck = "lightly";
                        shiftKeyDiv.className += " keyStuckLightly";
                    }
                }
            } else {

                // Handle non-sticky special keys,
                if (key.special == SWITCH_LAYOUT_CODE) {
                    keyboardIndexOffset ^= 2;   // Toggle the symbols bit,
                    keyboardIndexOffset &= 2;   // Remove other modifiers.
                    selectKeyboard(selectedKeyboardIndex);
                    releaseShiftKey();
                    removeKeyTimeouts();
                }
            }

            keyboardInterface.sendSpecial(parseInt(key.special));
        } else {
            keyboardInterface.sendChar(key.character);
            if (keyboardDiv.shiftKeyDiv.key.stuck=="lightly") releaseShiftKey();
        }
    }

    return keyboardDiv;
}

window.removeKeyTimeouts = function() {
    clearTimeout(stickKeyTimeoutId);
    clearTimeout(repeatKeyTimeoutId);
    clearInterval(repeatKeyIntervalId);
}

////////////////////////////
// Helper functions
////////////////////////////

function createDOMElement(type, className, parentElement) {
   var element = document.createElement(type);
   element.className = className;
   parentElement.appendChild(element);
   return element;
}

function isDescendant(root, parent, child) {
    while (child != null && child != root) {
        if (child == parent) {
            return true;
        }
        child = child.parentNode;
    }
    return false;
}

/////////////////////////////////
// Keyboards
/////////////////////////////////

let englishKeyboard = {
                          "keyWidth": "10",
                          "keyHeight": "25",
                          "horizontalGap": "0",
                          "verticalGap": "0",
                          "rows": [
                              {
                                  "keys": [
                                      {"character": "q", "popupCharacters":          "1"},
                                      {"character": "w", "popupCharacters":          "2"},
                                      {"character": "e", "popupCharacters":     "ēêëè3é", "defaultPopupCharacter": "5"},
                                      {"character": "r", "popupCharacters":          "4"},
                                      {"character": "t", "popupCharacters":          "5"},
                                      {"character": "y", "popupCharacters":          "6"},
                                      {"character": "u", "popupCharacters":     "ūüùû7ú", "defaultPopupCharacter": "5"},
                                      {"character": "i", "popupCharacters":     "ìïīî8í", "defaultPopupCharacter": "5"},
                                      {"character": "o", "popupCharacters":  "õōøœòöôó9", "defaultPopupCharacter": "9"},
                                      {"character": "p", "popupCharacters":          "0"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"character": "a", "popupCharacters":  "æãåā@àáâä", "defaultPopupCharacter": "5", "marginLeft":"5"},
                                      {"character": "s", "popupCharacters":         "#ß"},
                                      {"character": "d", "popupCharacters":          "$"},
                                      {"character": "f", "popupCharacters":          "%"},
                                      {"character": "g", "popupCharacters":      "&amp;"},
                                      {"character": "h", "popupCharacters":          "-"},
                                      {"character": "j", "popupCharacters":          "+"},
                                      {"character": "k", "popupCharacters":          "("},
                                      {"character": "l", "popupCharacters":          ")"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special"  : SHIFT_CODE, "icon": "shift", "width": "15", "sticky":"true" },
                                      {"character":        "z", "popupCharacters":          "*"},
                                      {"character":        "x", "popupCharacters":         "\""},
                                      {"character":        "c", "popupCharacters":         "'ç"},
                                      {"character":        "v", "popupCharacters":          ":"},
                                      {"character":        "b", "popupCharacters":          ";"},
                                      {"character":        "n", "popupCharacters":         "!ñ"},
                                      {"character":        "m", "popupCharacters":          "?"},
                                      {"key"      :       "67", "icon": "delete", "width": "15", "repeatable": "true"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special": SWITCH_LAYOUT_CODE, "label":     "?123", "width": "15"},
                                      //{"special":  "101", "icon" : "language", "width": "10"},
                                      //{"special":  "102", "icon" :    "paste", "width": "10"},
                                      {"character":  "@"},
                                      {"character":  "_"},
                                      {"character":  " ", "icon" :    "space", "width": "20", "repeatable": "true"},
                                      {"character":  ","},
                                      {"character":  ".", "popupCharacters": "&amp;%+&quot;-:'@;/()#!,?", "defaultPopupCharacter": "15"},
                                      {"character":  "/"},
                                      {"key"      : "66", "icon" :    "enter", "width": "15", "repeatable": "true"}
                                  ]
                              }
                          ]
                      };

let englishShiftedKeyboard = {
                          "keyWidth": "10",
                          "keyHeight": "25",
                          "horizontalGap": "0",
                          "verticalGap": "0",
                          "rows": [
                              {
                                  "keys": [
                                      {"character": "Q", "popupCharacters":          "1"},
                                      {"character": "W", "popupCharacters":          "2"},
                                      {"character": "E", "popupCharacters":     "ēêëè3é", "defaultPopupCharacter": "5"},
                                      {"character": "R", "popupCharacters":          "4"},
                                      {"character": "T", "popupCharacters":          "5"},
                                      {"character": "Y", "popupCharacters":          "6"},
                                      {"character": "U", "popupCharacters":     "ūüùû7ú", "defaultPopupCharacter": "5"},
                                      {"character": "I", "popupCharacters":     "ìïīî8í", "defaultPopupCharacter": "5"},
                                      {"character": "O", "popupCharacters":  "õōøœòöôó9", "defaultPopupCharacter": "9"},
                                      {"character": "P", "popupCharacters":          "0"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"character": "A", "popupCharacters":  "æãåā@àáâä", "defaultPopupCharacter": "5", "marginLeft":"5"},
                                      {"character": "S", "popupCharacters":         "#ß"},
                                      {"character": "D", "popupCharacters":          "$"},
                                      {"character": "F", "popupCharacters":          "%"},
                                      {"character": "G", "popupCharacters":      "&amp;"},
                                      {"character": "H", "popupCharacters":          "-"},
                                      {"character": "J", "popupCharacters":          "+"},
                                      {"character": "K", "popupCharacters":          "("},
                                      {"character": "L", "popupCharacters":          ")"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special"  : SHIFT_CODE, "icon": "shift", "width": "15", "sticky":"true" },
                                      {"character":        "Z", "popupCharacters":          "*"},
                                      {"character":        "X", "popupCharacters":         "\""},
                                      {"character":        "C", "popupCharacters":         "'ç"},
                                      {"character":        "V", "popupCharacters":          ":"},
                                      {"character":        "B", "popupCharacters":          ";"},
                                      {"character":        "N", "popupCharacters":         "!ñ"},
                                      {"character":        "M", "popupCharacters":          "?"},
                                      {"key"      :       "67", "icon": "delete", "width": "15", "repeatable": "true"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special": SWITCH_LAYOUT_CODE, "label":     "?123", "width": "15"},
                                      //{"special":  "101", "icon" : "language", "width": "10"},
                                      //{"special":  "102", "icon" :    "paste", "width": "10"},
                                      {"character":  "@"},
                                      {"character":  "_"},
                                      {"character":  " ", "icon" :    "space", "width": "20", "repeatable": "true"},
                                      {"character":  ","},
                                      {"character":  ".", "popupCharacters": "&amp;%+&quot;-:'@;/()#!,?", "defaultPopupCharacter": "15"},
                                      {"character":  "/"},
                                      {"key"      : "66", "icon" :    "enter", "width": "15", "repeatable": "true"}
                                  ]
                              }
                          ]
                      };

let englishSymbolsKeyboard = {
                          "keyWidth": "10",
                          "keyHeight": "25",
                          "horizontalGap": "0",
                          "verticalGap": "0",
                          "rows": [
                              {
                                  "keys": [
                                      {"character": "1", "popupCharacters": "¹½⅓¼⅛"},
                                      {"character": "2", "popupCharacters":    "²⅔"},
                                      {"character": "3", "popupCharacters":   "⅜³¾", "defaultPopupCharacter": "2"},
                                      {"character": "4", "popupCharacters":     "⁴"},
                                      {"character": "5", "popupCharacters":     "⅝"},
                                      {"character": "6"},
                                      {"character": "7", "popupCharacters":     "⅞", "defaultPopupCharacter": "5"},
                                      {"character": "8"},
                                      {"character": "9"},
                                      {"character": "0", "popupCharacters":    "∅ⁿ", "defaultPopupCharacter": "2"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"character": "@", "marginLeft":"5"},
                                      {"character": "#"},
                                      {"character": "$", "popupCharacters": "₱€¢£¥", "defaultPopupCharacter": "3"},
                                      {"character": "%", "popupCharacters":     "‰"},
                                      {"character": "&"},
                                      {"character": "-", "popupCharacters":  "—_–·", "defaultPopupCharacter": "2"},
                                      {"character": "+", "popupCharacters":     "±"},
                                      {"character": "(", "popupCharacters":    "<[{", "defaultPopupCharacter": "3"},
                                      {"character": ")", "popupCharacters":    ">]}", "defaultPopupCharacter": "3"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special"  : SHIFT_CODE, "icon": "shift", "width": "15", "sticky":"true" },
                                      {"character":        "*", "popupCharacters":   "★†‡", "defaultPopupCharacter": "2"},
                                      {"character":       "\"", "popupCharacters": "„“”«»", "defaultPopupCharacter": "3"},
                                      {"character":        "'", "popupCharacters": "‚‘’‹›", "defaultPopupCharacter": "3"},
                                      {"character":        ":"},
                                      {"character":        ";"},
                                      {"character":        "!", "popupCharacters":     "¡"},
                                      {"character":        "?", "popupCharacters":     "¿"},
                                      {"key"      :       "67", "icon": "delete", "width": "15", "repeatable": "true"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special": SWITCH_LAYOUT_CODE, "label":      "ABC", "width": "15"},
                                      //{"special":  "101", "icon" : "language", "width": "10"},
                                      //{"special":  "102", "icon" :    "paste", "width": "10"},
                                      {"character":  "_"},
                                      {"character":  " ", "icon" :    "space", "width": "30", "repeatable": "true"},
                                      {"character":  ","},
                                      {"character":  ".", "popupCharacters": "…"},
                                      {"character":  "/"},
                                      {"key"      : "66", "icon" :    "enter", "width": "15", "repeatable": "true"}
                                  ]
                              }
                          ]
                      };

let englishSymbolsShiftedKeyboard = {
                          "keyWidth": "10",
                          "keyHeight": "25",
                          "horizontalGap": "0",
                          "verticalGap": "0",
                          "rows": [
                              {
                                  "keys": [
                                      {"character": "~"},
                                      {"character": "`"},
                                      {"character": "|"},
                                      {"character": "•", "popupCharacters":     "♣♠♪♥♦", "defaultPopupCharacter": "3"},
                                      {"character": "√"},
                                      {"character": "π", "popupCharacters":     "Π"},
                                      {"character": "÷"},
                                      {"character": "×"},
                                      {"character": "¶", "popupCharacters":     "§"},
                                      {"character": "Δ"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"character": "£", "marginLeft":"5"},
                                      {"character": "¢"},
                                      {"character": "€"},
                                      {"character": "¥"},
                                      {"character": "^", "popupCharacters": "←↑↓→", "defaultPopupCharacter": "2"},
                                      {"character": "°", "popupCharacters":   "′″"},
                                      {"character": "=", "popupCharacters":  "∞≠≈", "defaultPopupCharacter": "2"},
                                      {"character": "{"},
                                      {"character": "}"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special"  : SHIFT_CODE, "icon": "shift", "width": "15", "sticky":"true" },
                                      {"character":       "\\"},
                                      {"character":        "©"},
                                      {"character":        "®"},
                                      {"character":        "™"},
                                      {"character":        "℅"},
                                      {"character":        "["},
                                      {"character":        "]"},
                                      {"key"      :       "67", "icon": "delete", "width": "15", "repeatable": "true"}
                                  ]
                              },
                              {
                                  "keys": [
                                      {"special": SWITCH_LAYOUT_CODE, "label":      "ABC", "width": "15"},
                                      //{"special":  "101", "icon" : "language", "width": "10"},
                                      //{"special":  "102", "icon" :    "paste", "width": "10"},
                                      {"character":  ","},
                                      {"character":  "<", "popupCharacters": "‹≤«", "defaultPopupCharacter": "2"},
                                      {"character":  " ", "icon" :    "space", "width": "30", "repeatable": "true"},
                                      {"character":  ">", "popupCharacters": "›≥»", "defaultPopupCharacter": "2"},
                                      {"character":  ".", "popupCharacters": "…"},
                                      {"key"      : "66", "icon" :    "enter", "width": "15", "repeatable": "true"}
                                  ]
                              }
                          ]
                      };


// Start,
if (document.readyState == "complete") {
    initializeKeyboard();
} else {
    window.addEventListener('load', initializeKeyboard, false);
}
