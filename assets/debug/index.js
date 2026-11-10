window.addEventListener('load', function() {
    initialize();
}, false);

function initialize() {
}

function request(element, uri) {

    // Perform now,
    performRequest(uri);

    // Repeat if button is held,
    let intervalId = setInterval(function() { performRequest(uri); }, 250);

    // Stop repeating when button is released,
    let mouseUpEventListener = function() { 
        clearInterval(intervalId); 
        element.removeEventListener("mouseup", mouseUpEventListener);
    };
    element.addEventListener("mouseup", mouseUpEventListener);
}

function performRequest(uri) {

    // Fetch and insert our HTML,
    fetch(uri).then(response => response.text()).then(data => {

        // Append response to log,
        document.getElementById("log").textContent += uri + ": " + data + "\n";

        // Scroll to the bottom of the log,
        let logContainer = document.getElementById("logContainer");
        logContainer.scrollTop = logContainer.scrollHeight;
    });
}
