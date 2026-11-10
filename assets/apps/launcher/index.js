
// Start,
if (document.readyState == "complete") {
    initializeLauncher();
} else {
    window.addEventListener('load', initializeLauncher, false);
}

function initializeLauncher() {

    // Start populating the applications area,
    sendMessage("Launcher initialized");

    // Start clock,
    startClock();

    // Setup the scroll indicators,
    setupScrollIndicators("applicationsContainer");
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

function startClock() {

    // Create a div for the clock,
    window.clockElement = document.createElement("div");
    clockElement.setAttribute("id", "clock");

    // Insert the clock element before the buttons,
    const maximizeButton = document.getElementById("maximizeButtonParent");
    document.getElementById("topBar").insertBefore(clockElement, maximizeButton);

    // Start ticking!
    setInterval(() => window.sendMessage("tickClock"), 15000);
    window.sendMessage("tickClock"); // Tick now.
}

window.addLauncherAction = function(label, icon, action) {

    // Create a new icon,
    anchor = document.createElement("a");
    anchor.className = "icon";

    iconImg = document.createElement("img");
    iconImg.className = "iconImage";
    iconImg.src = icon;
    anchor.appendChild(iconImg);

    iconText = document.createElement("span");
    iconText.className = "iconText";
    iconText.textContent = label;
    anchor.appendChild(iconText);

    // Attach and set up listener,
    document.getElementById("applications").appendChild(anchor);
    anchor.onclick = function() { sendMessage(action); };

    // Update UI,
    updateScrollIndicators();
};