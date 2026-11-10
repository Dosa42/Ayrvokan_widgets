javascript: (function() {

    let element = document.body;
    let textNode = document.createTextNode('besm Allah');
    element.appendChild(textNode);

    window.requestAnimationFrame(function() {
        window.requestAnimationFrame(function() {
            textNode.parentNode.removeChild(textNode);
        });
    });

})();
