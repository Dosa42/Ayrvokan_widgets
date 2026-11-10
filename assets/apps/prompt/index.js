
// Start,
if (document.readyState == "complete") {
    initializePrompt();
} else {
    window.addEventListener('load', initializePrompt, false);
}

function initializePrompt() {

    // Prompt code runs a little later than page start. That's why we need a separate
    // start message that's only sent when the settings code is loaded,
    sendMessage("Prompt started");

    // Setup the scroll indicators,
    setupScrollIndicators("dialogBody");
}

function decodeBase64UrlSafe(base64UrlString) {
    try {
        // Convert URL-safe Base64 to standard Base64,
        let base64String = base64UrlString.replace(/-/g, '+').replace(/_/g, '/');

        // Add padding if needed (Base64 should be a multiple of 4),
        while (base64String.length % 4 !== 0) base64String += '=';

        // Decode Base64 string,
        return atob(base64String);
    } catch (error) {
        console.error("Invalid Base64 URL-safe string:", error);
        return null;
    }
}

window.setMessageBase64 = function(base64Message) {
    let decodedMessage = decodeBase64UrlSafe(base64Message);
    if (decodedMessage==null) decodedMessage = "";
    setMessage(decodedMessage);
};

window.setMessage = function(message) {
    document.getElementById("messageContent").innerHTML = message;
    updateDimensions();
};

window.setButtonsDimensions = function(buttonWidth, buttonHeight) {
    window.buttonHeight = buttonHeight;
    let buttons = document.getElementsByClassName('promptButton');
    for (var i=0; i<buttons.length; i++) {
        buttons[i].style.width  = buttonWidth  + "px";
        buttons[i].style.height = buttonHeight + "px";
    }
    updateDimensions();
};

window.createButtons = function(buttonsTexts) {
    window.buttonsCount = 0;
    buttonsTexts.split(";").forEach(createButton);
};

window.createButton = function(text) {

    anchor = document.createElement("a");
    anchor.className = "button promptButtonParent";

    button = document.createElement("div");
    button.className = "button-inner promptButton";
    anchor.appendChild(button);

    buttonText = document.createElement("div");
    buttonText.className = "button-text";
    buttonText.innerHTML = text;
    button.appendChild(buttonText);

    document.getElementById("buttons").appendChild(anchor);
    let clickListener = function() {
        if (typeof button.alreadyClicked === 'undefined') {
            button.removeEventListener("click", clickListener);
            sendMessage("Prompt: " + text);
            button.alreadyClicked = true;
        }
    };
    setupButton(button, clickListener);

    window.buttonsCount++;

    return anchor;
};

function updateDimensions() {

    if (window.buttonsCount==0) {
        document.getElementById("dialogBody").style.height = "100%";
    } else if (window.buttonsCount>0) { // Not undefined.
        document.getElementById("dialogBody").style.height = "calc(100% - 18px - " + window.buttonHeight + "px)";
        document.getElementById("scrollDownIndicator").style.bottom = "65px";
    }
    updateScrollIndicators();
}

function updateScrollIndicators() {

    const    scrollingElement = setupScrollIndicators.scrollingElement;
    const   scrollUpIndicator = document.getElementById(  "scrollUpIndicator");
    const scrollDownIndicator = document.getElementById("scrollDownIndicator");

    scrollUpIndicator  .style.opacity = ((scrollingElement.scrollHeight - scrollingElement.offsetHeight > 0) && (scrollingElement.scrollTop > 10)) ? 1 : 0;
    scrollDownIndicator.style.opacity =  (scrollingElement.scrollHeight - (scrollingElement.scrollTop + scrollingElement.offsetHeight) < 10) ? 0 : 1;
}

function setupScrollIndicators(scrollingElementId) {
    setupScrollIndicators.scrollingElement = document.getElementById(scrollingElementId);
    setupScrollIndicators.scrollingElement.addEventListener('scroll', updateScrollIndicators);
    setupScrollIndicators.scrollingElement.addEventListener('resize', updateScrollIndicators);
    updateScrollIndicators();
}
