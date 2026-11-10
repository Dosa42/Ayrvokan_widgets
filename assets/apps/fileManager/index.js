
// Start,
if (document.readyState == "complete") {
    initializeFileManager();
} else {
    window.addEventListener('load', initializeFileManager, false);
}

function initializeFileManager() {

    // Start populating the files area,
    sendMessage("FileManager initialized");

    // Setup the controls,
    document.getElementById("upButton").onclick = function() { sendMessage("Go up"); };

    // Setup the scroll indicators,
    setupScrollIndicators("scrollingParent");
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
    window.addEventListener('resize', updateScrollIndicators);
    updateScrollIndicators();
}

// Called from the Java side,
window.updateFilesList = function(list) {

    resetFiles();

    list = JSON.parse(list);
    list.folders.forEach(folderName => addFolder(folderName, list.path));
    list.files  .forEach(  fileName => addFile  (  fileName, list.path));

    // Update the page title and path text,
    document.title = list.path.substring(list.path.lastIndexOf("/") + 1);
    document.getElementById("pathText").value = list.path;

    updateScrollIndicators();
}

function resetFiles() {
    document.getElementById("files").innerHTML = "";
}

function addFolder(folderName, path) {
    const element = createIcon("graphics/folder.png", folderName);
    element.onclick = function() {
        resetFiles();
        sendMessage("Change path: " + path + "/" + folderName);
    };
}

function addFile(fileName, path) {
    const element = createIcon("graphics/file.png", fileName);
    element.onclick = function() {
        sendMessage("Open file: " + path + "/" + fileName);
    };
}

function createIcon(iconSrc, iconText) {

    anchor = document.createElement("a");
    anchor.className = "icon";

    icon = document.createElement("img");
    icon.className = "iconImage";
    icon.src = iconSrc;
    anchor.appendChild(icon);

    newLine = document.createElement("br");
    anchor.appendChild(newLine);

    text = document.createElement("span");
    text.className = "iconText";
    text.textContent = iconText;
    anchor.appendChild(text);

    document.getElementById("files").appendChild(anchor);
    return anchor;
}