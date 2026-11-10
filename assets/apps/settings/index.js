
// Start,
if (document.readyState == "complete") {
    initializeSettings();
} else {
    window.addEventListener('load', initializeSettings, false);
}

const SCALE_SLIDER_MAX = 6.0;

function initializeSettings() {

    // Settings code runs a little later than page start. That's why we need a separate
    // start message that's only sent when the settings code is loaded,
    sendMessage("Settings started");

    // Setup tabs,
    setupTab("generalTab", "generalSettings");
    setupTab(     "vrTab",      "vrSettings");
    setupTab(  "linuxTab",   "linuxSettings");

    // Setup toggle switches,
    enableSwitch("desktopLookingAroundSwitch", function(enabled) { sendMessage("DesktopLookingAround: " + enabled); setHiddenSettingsVisibility("hiddenLookingAroundSettings"  , enabled); });
    enableSwitch(       "ignoreCutoutsSwitch", function(enabled) { sendMessage("IgnoreCutouts: "        + enabled); });
    enableSwitch(        "releaseMouseSwitch", function(enabled) { sendMessage("ReleaseMouse: "         + enabled); });
    enableSwitch(                  "vrSwitch", function(enabled) { sendMessage("VR: "                   + enabled); setHiddenSettingsVisibility("hiddenVRSettings"             , enabled); });
    enableSwitch(     "vrLookingAroundSwitch", function(enabled) { sendMessage("VRLookingAround: "      + enabled); setHiddenSettingsVisibility("hiddenVRLookingAroundSettings", enabled); });

    // Linux switches,
    enableSwitch("startLinuxFullscreenSwitch", function(enabled) { sendMessage("StartLinuxFullscreen: " + enabled); });
    enableSwitch(               "audioSwitch", function(enabled) { sendMessage("Audio: "                + enabled); });
    enableSwitch(             "sharpenSwitch", function(enabled) { sendMessage("Sharpen: "              + enabled); });
    enableSwitch(          "16bitColorSwitch", function(enabled) { sendMessage("16BitColor: "           + enabled); });
    enableSwitch("hardwareAccelerationSwitch", function(enabled) { sendMessage("HardwareAcceleration: " + enabled); });
    enableSwitch(            "busyLoopSwitch", function(enabled) { sendMessage("BusyLoop: "             + enabled); });
    enableSwitch(         "limitMemorySwitch", function(enabled) { sendMessage("LimitMemory: "          + enabled); });
    enableSwitch(  "forceEnglishLocaleSwitch", function(enabled) { sendMessage("ForceEnglishLocale: "   + enabled); });
    enableSwitch(           "runAsRootSwitch", function(enabled) { sendMessage("RunAsRoot: "            + enabled); });
    enableSwitch(           "ulauncherSwitch", function(enabled) { sendMessage("Ulauncher: "            + enabled); });
    enableSwitch(            "safeModeSwitch", function(enabled) { sendMessage("SafeMode: "             + enabled); });

    // Setup orientation buttons,
    let orientationButtonListener = function(direction) {
        if (orientationButtonListener.coolingDown) return;
        orientationButtonListener.coolingDown = true;
        sendMessage("Orientation: " + direction);
        setTimeout(function() { orientationButtonListener.coolingDown = false; }, 600);
    };
    setupButton("orientationRightButton", function() { orientationButtonListener("cw" ); });
    setupButton( "orientationLeftButton", function() { orientationButtonListener("ccw"); });

    // Setup IPD adjustment,
    setAdjustIpdButton("ipdPlus" ,  1);
    setAdjustIpdButton("ipdMinus", -1);

    // Setup scale slider,
    setupSlider("scaleSlider", false, function(scaleSlider) {
        sendMessage("Scale: " + (scaleSlider.value / SCALE_SLIDER_MAX));
        // Wait until resizing settles and report the new pixel ratio,
        setTimeout(function() {
            sendMessage("devicePixelRatio: " + window.devicePixelRatio);
            const settingsElement = document.getElementById("settings");
            settingsElement.scrollTop = settingsElement.scrollHeight * 0.28;
        }, 1000);
    });

    // Setup cursor speed slider,
    setupSlider("cursorSpeedSlider", true, function(cursorSpeedSlider) {
        sendMessage("CursorSpeed: " + cursorSpeedSlider.value);
    });

    // Setup scrolling speed slider,
    setupSlider("scrollingSpeedSlider", true, function(scrollingSpeedSlider) {
        sendMessage("ScrollingSpeed: " + scrollingSpeedSlider.value);
    });

    // Setup looking around fullscreen width slider,
    setupSlider("fullscreenWidthSlider", true, function(fullscreenWidthSlider) {
        sendMessage("FullscreenWidth: " + fullscreenWidthSlider.value);
    });

    // Setup looking around fullscreen height slider,
    setupSlider("fullscreenHeightSlider", true, function(fullscreenHeightSlider) {
        sendMessage("FullscreenHeight: " + fullscreenHeightSlider.value);
    });

    // Setup vr looking around fullscreen width slider,
    setupSlider("vrFullscreenWidthSlider", true, function(vrFullscreenWidthSlider) {
        sendMessage("VRFullscreenWidth: " + vrFullscreenWidthSlider.value);
    });

    // Setup vr looking around fullscreen height slider,
    setupSlider("vrFullscreenHeightSlider", true, function(vrFullscreenHeightSlider) {
        sendMessage("VRFullscreenHeight: " + vrFullscreenHeightSlider.value);
    });

    // Setup the vertical scroll indicators,
    setupScrollIndicators("pages");
}

function setupSlider(elementId, addLabels, changeListener) {
    const slider = document.getElementById(elementId);
    slider.addEventListener("change", function() { changeListener(slider); });

    // Add labels,
    if (!addLabels) return;
    createSliderMarkings(slider, "sliderMarkingsBottommostContainer");
    createSliderMarkings(slider, "sliderMarkingsContainer", "ˈ");
}

function createSliderMarkings(slider, containerClass, markings) {

    // Create markings container,
    const sliderMarkings = document.createElement("div");
    sliderMarkings.className = containerClass ? containerClass : "sliderMarkingsContainer";
    slider.insertAdjacentElement("afterend", sliderMarkings);

    // Create labels,
    const min  = parseFloat(slider.min );
    const max  = parseFloat(slider.max );
    const step = parseFloat(slider.step);
    const stepsCount = (max-min)/step;
    for (let i=0; i<=stepsCount; i++) {
        const sliderMarking = document.createElement("span");
        sliderMarking.className = "sliderMarking";
        sliderMarking.style.left = ((i / stepsCount) * 100) + "%";
        if (markings) {
            sliderMarking.innerHTML = Array.isArray(markings) ? markings[i] : markings;
        } else {
            let value = min + (i*step);
            value = (value % 1 === 0) ? value.toString() : value.toFixed(1);
            sliderMarking.textContent = value + "x";
        }
        sliderMarkings.appendChild(sliderMarking);
    }
}

function setupTab(tabId, pageId) {
    const  tabElement = document.getElementById( tabId);
    const pageElement = document.getElementById(pageId);
    pageElement.tabElement = tabElement;
    tabElement.addEventListener("mouseup", function() {
        showPage(pageId);
    });
}

let currentPage = null;
function showPage(pageId) {
    if (currentPage!=null) {
        currentPage.style.display = "none";
        currentPage.tabElement.classList.remove("activeTab");
    }
    currentPage = document.getElementById(pageId);
    currentPage.tabElement.classList.add("activeTab");
    currentPage.style.display = "block";
    updateScrollIndicators();
}

function enableSwitch(id, toggleListener) {
    const switchElement = document.getElementById(id);
    switchElement.addEventListener("mouseup", function() {
        if (switchElement.style.getPropertyValue("--set") == 0) {
            switchElement.style.setProperty("--set", 1);
            toggleListener(true);
        } else {
            switchElement.style.setProperty("--set", 0);
            toggleListener(false);
        }
    });
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

function setAdjustIpdButton(buttonId, displacement) {

    const button  = document.getElementById(buttonId);
    const ipdText = document.getElementById("ipdText");

    const adjustIpd = function(displacement) {
        let value = parseInt(ipdText.textContent) + displacement;
        if (value >  50) value =  50;
        if (value < -50) value = -50;
        ipdText.textContent = value;
        sendMessage("IPD: " + (value / 100.0));
    };

    let intervalId;
    button.addEventListener("touchstart", function() {
        adjustIpd(displacement);
        // Repeat as long ad the button is held,
        intervalId = setInterval(function() { adjustIpd(displacement); }, 125);
    });

    // Stop repeating and send the message when the button is released,
    let touchEndEventListener = function() {
        clearInterval(intervalId);
    };
    button.addEventListener("touchend", touchEndEventListener);
}

function setHiddenSettingsVisibility(elementId, visible) {
    const hiddenSettings = document.getElementById(elementId);
    if (visible) {
        hiddenSettings.style.display = "block";
        setTimeout(function() { hiddenSettings.style.opacity = 1; }, 250);
        hiddenSettings.previousElementSibling.scrollIntoView({ behavior: "smooth", block: "start" });
    } else {
        hiddenSettings.style.opacity = 0;
        hiddenSettings.style.display = "none";
    }
    updateScrollIndicators();
}

// To be called from the Java side,
let androidSdkVersion = 24;
window.updateSetting = function(setting) {

    if (setting.startsWith("SdkVersion: ")) {
        androidSdkVersion = parseInt(setting.substring(setting.indexOf(":") + 2));
    } else if (setting.startsWith("Scale: ")) {
        // Set the scale slider labels,
        const valuesList = setting.substring(setting.indexOf(":") + 2).split(",");
        const slider = document.getElementById("scaleSlider");
        createSliderMarkings(slider, "sliderMarkingsBottommostContainer", valuesList);
        createSliderMarkings(slider, "sliderMarkingsContainer", "ˈ");

        // Set the scale slider value,
        const scale = parseFloat(valuesList[(~~SCALE_SLIDER_MAX)+1]); // ~~ => bitwise operation, turns float into int.
        document.getElementById("scaleSlider").value = scale * SCALE_SLIDER_MAX;
    } else if (setting.startsWith("CursorSpeed: ")) {
        const cursorSpeed = parseFloat(setting.substring(setting.indexOf(":") + 2));
        document.getElementById("cursorSpeedSlider").value = cursorSpeed;
    } else if (setting.startsWith("ScrollingSpeed: ")) {
        const scrollingSpeed = parseFloat(setting.substring(setting.indexOf(":") + 2));
        document.getElementById("scrollingSpeedSlider").value = scrollingSpeed;
    } else if (setting.startsWith("DesktopLookingAround: ")) {
        updateSwitchState("desktopLookingAroundSwitch", setting);
        const enabled = (setting.substring(setting.indexOf(":") + 2) == "true") ? 1 : 0;
        setHiddenSettingsVisibility("hiddenLookingAroundSettings", enabled);
    } else if (setting.startsWith("FullscreenWidth: ")) {
        const fullscreenWidth = parseFloat(setting.substring(setting.indexOf(":") + 2));
        document.getElementById("fullscreenWidthSlider").value = fullscreenWidth;
    } else if (setting.startsWith("FullscreenHeight: ")) {
        const fullscreenHeight = parseFloat(setting.substring(setting.indexOf(":") + 2));
        document.getElementById("fullscreenHeightSlider").value = fullscreenHeight;
    } else if (setting.startsWith("IgnoreCutouts: ")) {
        updateSwitchState("ignoreCutoutsSwitch", setting);
        // Show only for android 9+ devices,
        if (androidSdkVersion >= 28) document.getElementById("ignoreCutoutsSetting").style.display = "block";
    } else if (setting.startsWith("ReleaseMouse: ")) {
        updateSwitchState("releaseMouseSwitch", setting);
    } else if (setting.startsWith("VR: ")) {
        updateSwitchState("vrSwitch", setting);
        const enabled = (setting.substring(setting.indexOf(":") + 2) == "true") ? 1 : 0;
        setHiddenSettingsVisibility("hiddenVRSettings", enabled);
    } else if (setting.startsWith("IPD: ")) {
        const ipd = parseFloat(setting.substring(setting.indexOf(":") + 2));
        document.getElementById("ipdText").textContent = parseFloat(ipd).toFixed(2) * 100;
    } else if (setting.startsWith("VRLookingAround: ")) {
        updateSwitchState("vrLookingAroundSwitch", setting);
        const enabled = (setting.substring(setting.indexOf(":") + 2) == "true") ? 1 : 0;
        setHiddenSettingsVisibility("hiddenVRLookingAroundSettings", enabled);
    } else if (setting.startsWith("VRFullscreenWidth: ")) {
        const vrFullscreenWidth = parseFloat(setting.substring(setting.indexOf(":") + 2));
        document.getElementById("vrFullscreenWidthSlider").value = vrFullscreenWidth;
    } else if (setting.startsWith("VRFullscreenHeight: ")) {
        const vrFullscreenHeight = parseFloat(setting.substring(setting.indexOf(":") + 2));
        document.getElementById("vrFullscreenHeightSlider").value = vrFullscreenHeight;
    } else if (setting.startsWith("StartLinuxFullscreen: ")) {
        updateSwitchState("startLinuxFullscreenSwitch", setting);
    } else if (setting.startsWith("Audio: ")) {
        updateSwitchState("audioSwitch", setting);
    } else if (setting.startsWith("Sharpen: ")) {
        updateSwitchState("sharpenSwitch", setting);
    } else if (setting.startsWith("16BitColor: ")) {
        updateSwitchState("16bitColorSwitch", setting);
    } else if (setting.startsWith("HardwareAcceleration: ")) {
        updateSwitchState("hardwareAccelerationSwitch", setting);
    } else if (setting.startsWith("BusyLoop: ")) {
        updateSwitchState("busyLoopSwitch", setting);
    } else if (setting.startsWith("LimitMemory: ")) {
        updateSwitchState("limitMemorySwitch", setting);
    } else if (setting.startsWith("ForceEnglishLocale: ")) {
        updateSwitchState("forceEnglishLocaleSwitch", setting);
    } else if (setting.startsWith("RunAsRoot: ")) {
        updateSwitchState("runAsRootSwitch", setting);
    } else if (setting.startsWith("Ulauncher: ")) {
        updateSwitchState("ulauncherSwitch", setting);
    } else if (setting.startsWith("SafeMode: ")) {
        updateSwitchState("safeModeSwitch", setting);
    } else if (setting="Show general settings") {
        showPage("generalSettings");
    }
};

function updateSwitchState(id, setting) {

    const enabled = (setting.substring(setting.indexOf(":") + 2) == "true") ? 1 : 0;
    const switchElement = document.getElementById(id);
    switchElement.style.setProperty("--transition", "none");
    switchElement.style.setProperty("--set", enabled);
    setTimeout(function() { switchElement.style.setProperty("--transition", "0.25s ease-in-out"); }, 500);
}
