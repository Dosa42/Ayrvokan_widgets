
// Communication with Java,
// Establish connection with app
let port = browser.runtime.connectNative("browser");
port.onMessage.addListener(response => {

    // Send received message (if any),
    if (typeof response.data !== 'undefined') window.eval("handleJavaMessage('" + response.data + "')");

    // Run received javascript code (if any),
    if (typeof response.code !== 'undefined') eval(response.code);

    // Run received page javascript code (if any),
    if (typeof response.pageCode !== 'undefined') window.eval(response.pageCode);
});
port.postMessage("Background script started: " + location.href);
