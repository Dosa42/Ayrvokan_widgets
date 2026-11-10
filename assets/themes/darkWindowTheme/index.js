var javaInterface = {};
window.sendMessage = function(message) { window.postMessage({ type: "FROM_PAGE", text: message }, "*"); };

let lastEventElement = null;
function handleJavaMessage(message) {

    if (message == "EnableCloseButton") {
        enableCloseButton();
    } else if (message == "EnableMaximizeButton") {
        enableMaximizeButton();
    } else if (message.startsWith("CursorEvent,")) {
        handleCursorEvent(message);
    } else {
        console.log("Unexpected message: " + message);
    }
}

function enableCloseButton() {

    // Show the close button,
    const closeButtonParent = document.getElementById("closeButtonParent");
    closeButtonParent.style.display = "inline-block";

    // Adjust the title bar size,
    document.documentElement.style.setProperty("--closeButtonEnabled", 1);
}

function enableMaximizeButton() {
    // Show the maximize button,
    const maximizeButtonParent = document.getElementById("maximizeButtonParent");
    maximizeButtonParent.style.display = "inline-block";

    // Adjust the title bar size,
    document.documentElement.style.setProperty("--maximizeButtonEnabled", 1);
}

window.remainingVerticalScrollAmount = 0;
function handleCursorEvent(message) {

    // Break down the message into its components,
    const data = message.split(",");
    let event = data[1];
    let mouseX = Math.round(parseFloat(data[2]));
    let mouseY = Math.round(parseFloat(data[3]));

    // Since mouse ups that occur outside the document are not delivered to any element, and since
    // mouse ups means that if moving or resizing was taking place, it stopped, stop these actions
    // anyway, even if this resulted in duplicate stop messages,
    if (event == "mouseup") javaInterface.stopMovingAndResizing();

    // Find event target,
    let mouseOverElement = document.elementFromPoint(mouseX, mouseY);
    if (!mouseOverElement) return ;

    // If this is belongs to link, send the event to the link instead,
    if (mouseOverElement.parentElement && mouseOverElement.parentElement.nodeName == "A") {
        mouseOverElement = mouseOverElement.parentElement;
        setupClickWithPressedState(mouseOverElement);
    }

    // Send a mouse local leave (this is not perfect, as it only affects topmost elements. But it
    // works in this context),
    if (!lastEventElement) lastEventElement = mouseOverElement;
    if (mouseOverElement != lastEventElement) {
        lastEventElement.dispatchEvent(new MouseEvent("mouseleave", {
            bubbles: true,
            clientX: mouseX,
            clientY: mouseY
        }));
    }

    // Handle mouse wheel,
    if (event == "scroll") {
        wheelDeltaY = - data[4] * 50;

        // Find the first scrollable element in this position,
        // Note: maybe add style has overflow: scroll?
        while ((mouseOverElement!=null) && ((mouseOverElement.clientHeight==0) || !(mouseOverElement.scrollHeight - mouseOverElement.clientHeight > 10))) {
            mouseOverElement = mouseOverElement.parentNode;
        }
        if (mouseOverElement==null) return;

        // Scroll,
        window.remainingVerticalScrollAmount += wheelDeltaY;
        let appliedScrollAmount = Math.trunc(window.remainingVerticalScrollAmount);
        window.remainingVerticalScrollAmount -= appliedScrollAmount;
        mouseOverElement.scrollTo(0, mouseOverElement.scrollTop + appliedScrollAmount);
        return;
    }

    // Handle right clicks,
    let button = 1;
    if (event == "secondarydown") {
        event = "mousedown";
        button = 3;
    } else if (event == "secondaryup") {
        event = "mouseup";
        button = 3;
    }

    // Dispatch event,
    let mouseEvent = new MouseEvent(event, {
        bubbles: true,
        clientX: mouseX,
        clientY: mouseY,
        button: button
    });
    mouseOverElement.dispatchEvent(mouseEvent);
    lastEventElement = mouseOverElement;
}

// Start,
if (document.readyState == "complete") {
    initialize();
} else {
    window.addEventListener('load', initialize, false);
}

function initialize() {

    sendMessage("Theme started");

    javaInterface.startMoving           = function(      ) { sendMessage("startMoving"                 ); };
    javaInterface.startResizing         = function(anchor) { sendMessage("startResizing" + " " + anchor); };
    javaInterface.stopMovingAndResizing = function(      ) { sendMessage("stopMovingAndResizing"       ); };
    javaInterface.closeWindow           = function(      ) { sendMessage("closeWindow"                 ); };
    javaInterface.maximizeButtonPressed = function(      ) { sendMessage("maximizeButtonPressed"       ); };

    // Setup resizing,
    const          TOP_ANCHOR = 1;
    const    TOP_RIGHT_ANCHOR = 2;
    const        RIGHT_ANCHOR = 3;
    const BOTTOM_RIGHT_ANCHOR = 4;
    const       BOTTOM_ANCHOR = 5;
    const  BOTTOM_LEFT_ANCHOR = 6;
    const         LEFT_ANCHOR = 7;
    const     TOP_LEFT_ANCHOR = 8;
    initializeResizingAnchor(        "topBorder",          TOP_ANCHOR);
    initializeResizingAnchor(   "topRightCorner",    TOP_RIGHT_ANCHOR);
    initializeResizingAnchor(      "rightBorder",        RIGHT_ANCHOR);
    initializeResizingAnchor("bottomRightCorner", BOTTOM_RIGHT_ANCHOR);
    initializeResizingAnchor(     "bottomBorder",       BOTTOM_ANCHOR);
    initializeResizingAnchor( "bottomLeftCorner",  BOTTOM_LEFT_ANCHOR);
    initializeResizingAnchor(       "leftBorder",         LEFT_ANCHOR);
    initializeResizingAnchor(    "topLeftCorner",     TOP_LEFT_ANCHOR);

    // Stop the title bar from showing the stubborn copy dialog,
    const titleBar = document.getElementById("titleBar");
    consumeTouch(titleBar, true, true, false);

    // Setup buttons handling,
    // TODO: increase the clicking area without changing appearance...
    setupButton(   "closeButton", javaInterface.closeWindow          );
    setupButton("maximizeButton", javaInterface.maximizeButtonPressed);
}

function setupButton(id, clickListener) {

    let button;
    if (typeof id === 'string' || id instanceof String) {
        button = document.getElementById(id);
    } else {
        button = id;
    }

    button.addEventListener("click", clickListener);
    setupClickWithPressedState(button);
}

function setupClickWithPressedState(element) {

    // Don't do this procedure unnecessarily,
    if (element.clickProcedureAlreadySet) return ;
    element.clickProcedureAlreadySet = true;

    // Detect and dispatch clicks,
    const maxClickDistance = 12;
    let isDown = false;
    let lastX, lastY;
    let totalDistance;

    let downFunction = function(event) {
        event.stopPropagation();
        event.preventDefault();
        element.setAttribute("data-pressed", "");

        if (event.touches) {
            lastX = event.touches[0].clientX;
            lastY = event.touches[0].clientY;
        } else {
            lastX = event.clientX;
            lastY = event.clientY;
        }
        totalDistance = 0;
        isDown = true;
    };

    let moveFunction = function(event) {
        event.stopPropagation();
        event.preventDefault();
        element.setAttribute("data-hover", "");

        if (!isDown) return;

        let newX, newY;
        if (event.touches) {
            newX = event.touches[0].clientX;
            newY = event.touches[0].clientY;
        } else {
            newX = event.clientX;
            newY = event.clientY;
        }

        totalDistance += Math.sqrt((newX-lastX)*(newX-lastX) + (newY-lastY)*(newY-lastY));
        lastX = newX;
        lastY = newY;
    };

    let upFunction = function(event) {
        event.stopPropagation();
        event.preventDefault();
        element.removeAttribute("data-pressed");

        if (isDown && (totalDistance <= maxClickDistance)) {
            if (event.button == 3) {
                element.rightclick();
            } else {
                element.click();
            }
        }
        isDown = false;
    };

    let leaveFunction = function(event) {
        event.stopPropagation();
        event.preventDefault();
        element.removeAttribute("data-pressed");
        element.removeAttribute("data-hover");

        isDown = false;
    };

    // Register events,
    element.addEventListener("mousedown" ,  downFunction);
    element.addEventListener("mousemove" ,  moveFunction);
    element.addEventListener("mouseover" ,  moveFunction);
    element.addEventListener("mouseup"   ,    upFunction);
    element.addEventListener("mouseleave", leaveFunction);

    element.addEventListener("touchstart",  downFunction);
    element.addEventListener("touchmove" ,  moveFunction);
    element.addEventListener("touchend"  ,    upFunction);
}

function consumeTouch(element, capture, preventDefault, preventPropagation) {
    let consumeFunction = function(event) {
        if (preventPropagation) event.stopPropagation();
        if (preventDefault) event.preventDefault();
    };

    element.addEventListener( "mousedown", consumeFunction, { capture: capture, once: false });
    element.addEventListener(   "mouseup", consumeFunction, { capture: capture, once: false });
    element.addEventListener("touchstart", consumeFunction, { capture: capture, once: false });
    element.addEventListener(  "touchend", consumeFunction, { capture: capture, once: false });
}

function initializeResizingAnchor(anchorElementId, anchorValue) {

    const element = document.getElementById(anchorElementId);

    // Mouse pointer changing,
    element.addEventListener("mouseenter", function (event) {
        console.log("Mouse Enter");
    });
    element.addEventListener("mouseleave", function (event) {
        console.log("Mouse Leave");
    });

    // Resizing,
    element.addEventListener( "mousedown", function (event) { javaInterface.startResizing(anchorValue); event.preventDefault(); }, { capture: false, once: false });
    element.addEventListener("touchstart", function (event) { javaInterface.startResizing(anchorValue); event.preventDefault(); }, { capture: false, once: false });

    element.addEventListener(   "mouseup", function (event) { javaInterface.stopMovingAndResizing(); event.preventDefault(); }, { capture: false, once: false });
    element.addEventListener(  "touchend", function (event) { javaInterface.stopMovingAndResizing(); event.preventDefault(); }, { capture: false, once: false });
}
