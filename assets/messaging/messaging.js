// For more information about content scripts: https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Content_scripts#Communicating_with_background_scripts

// This is no longer supported, but it means that something similar could be present:
//   https://developer.mozilla.org/en-US/docs/Mozilla/Tech/XPCOM/Reference/Interface/nsIDOMWindowUtils#setResolution()

// Define viewport and scale setting functions before starting communication with the Java side,
// Set the viewport,
let setViewport = function(scale) {

    // Get the head tag,
    const headElement = document.getElementsByTagName('head')[0];
    if (headElement) {

        // Prepare a viewport meta content string which sets the viewport to the actual physical size,
        // and the scale to the user-set value,
        const viewportMetaContent = "user-scalable=no, width=device-width, initial-scale=" + scale;

        // Check if the viewport meta tag is already set,
        const existingViewportTag = headElement.querySelector("meta[name='viewport']");
        if (existingViewportTag!=null) {

            // Even if it's the same, we have to reset it (sometimes it just doesn't work from
            // the first time, we have to update it),
            existingViewportTag.content = viewportMetaContent;
        } else {

            // Create a new meta tag for the viewport,
            var meta = document.createElement("meta");
            meta.name = "viewport";
            meta.content = viewportMetaContent;
            headElement.appendChild(meta);

            // The above doesn't work in duckduckgo search results, so, we do this,
            let setViewportMeta = function() {
                window.eval("var meta = document.createElement('meta');\n" +
                            "meta.name = 'viewport';\n" +
                            "meta.content = '" + viewportMetaContent + "';\n" +
                            "document.getElementsByTagName('head')[0].appendChild(meta);\n");
            };
            if (document.readyState == "complete") {
                setViewportMeta();
            } else {
                window.addEventListener('load', setViewportMeta, false);
            }

            //port.postMessage("Scaling: " + existingViewportTag);
            //const html = document.getElementsByTagName('html')[0];
            //html.style.transformOrigin = "left top";
            //html.style.transform = "scale(0.25, 0.25)";
        }
    }
}

// Communication with Java,
// Establish connection with app
let port = browser.runtime.connectNative("browser");
port.onMessage.addListener(response => {

    // Send received message (if any),
    if (typeof response.data !== 'undefined') window.eval("handleJavaMessage(`" + response.data + "`)");

    // Run received javascript code (if any),
    if (typeof response.code !== 'undefined') eval(response.code);

    // Run received page javascript code (if any),
    if (typeof response.pageCode !== 'undefined') window.eval(response.pageCode);
});
port.postMessage("Page started: " + location.href);
port.postMessage("devicePixelRatio: " + window.devicePixelRatio);

// Setup communication with embedding pages,
// See: https://developer.chrome.com/extensions/content_scripts#host-page-communication
window.addEventListener("message", function(event) {

    if (event.source != window) return;

    if (event.data.type && (event.data.type == "FROM_PAGE")) {
        // Any messages that we receive from the page are to be propagated back to the Java side,
        port.postMessage(event.data.text);
    }
}, false);

//document.body.style.background = "#0f0";
