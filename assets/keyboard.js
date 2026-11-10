javascript: (function() {

    if (document.handleSoftKeyboard) return;

    var callCount=0;
    var element;

    var hideKeyboardFunction = function() {
        browserInterface.hideSoftKeyboard("WebView " + callCount);
        if (element) element.removeEventListener("blur", hideKeyboardFunction);
    };

    var isElementTextInput = function(element) {

        var inputTypesRequiringKeyboard = ["date", "datetime-local", "email", "month", "number", "password", "search", "tel", "text", "time", "url", "week"];
        if ((element.tagName == "INPUT" && inputTypesRequiringKeyboard.includes(element.type)) ||
            (element.tagName == "TEXTAREA") ||
            (element.contentEditable == true)) {
            return true;
        }
        return false;
    };

    document.handleSoftKeyboard = function(acceptIframes) {

        var element = document.activeElement;

        // Remove any event listeners registered before, to avoid
        // having the same listeners registered more than once,
        element.removeEventListener("blur", hideKeyboardFunction);

        if (isElementTextInput(element) ||
            (acceptIframes && element.tagName == "IFRAME")) {

            element.addEventListener("blur", hideKeyboardFunction);
            browserInterface.showSoftKeyboard("WebView " + ++callCount);
        } else {
            hideKeyboardFunction();
        }
    };

    window.addEventListener("beforeunload", hideKeyboardFunction);
})();
