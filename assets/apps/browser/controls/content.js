
// Prevent url text from automatically taking the focus when the title bar is touched,
const urlText = document.getElementById('urlText');
const  topBar = document.getElementById('topBar' );
topBar.addEventListener( "mousedown", function (event) { urlText.blur(); }, { capture: false, once: false });
topBar.addEventListener("touchstart", function (event) { urlText.blur(); }, { capture: false, once: false });

// Pressing enter should load the url,
urlText.addEventListener('keyup', ({key}) => {
    if (key === "Enter") {
        sendMessage("Load URL: " + urlText.value);
        urlText.blur();
    }
});

// Setup forward, backward, reload and stop buttons,
document.getElementById( 'forwardButton').onclick = () => sendMessage("Go forward" );
document.getElementById('backwardButton').onclick = () => sendMessage("Go backward");
document.getElementById(  'reloadButton').onclick = () => sendMessage("Reload"     );
document.getElementById(    'stopButton').onclick = () => sendMessage("Stop"       );
