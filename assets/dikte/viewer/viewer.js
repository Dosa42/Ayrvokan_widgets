import RFB from './novnc/core/rfb.js';

const screen = document.getElementById('screen');
const keyboard = document.getElementById('keyboard');
const rfb = new RFB(screen, `ws://${location.host}/websockify`, {shared: true});
rfb.scaleViewport = true;
rfb.resizeSession = true;
rfb.background = '#141821';
rfb.focusOnClick = true;
rfb.addEventListener('connect', () => window.Native?.connected());
rfb.addEventListener('disconnect', event => window.Native?.disconnected(event.detail.clean ? 'Dikte görüntüsü kapandı' : 'Dikte görüntü bağlantısı kesildi'));
rfb.addEventListener('clipboard', event => window.Native?.clipboard(event.detail.text));
window.toggleKeyboard = () => {
    keyboard.focus();
};
window.pasteClipboard = text => {
    rfb.clipboardPasteFrom(text);
    rfb.sendKey(0xffe3, 'ControlLeft', true);
    rfb.sendKey(0x76, 'KeyV', true);
    rfb.sendKey(0x76, 'KeyV', false);
    rfb.sendKey(0xffe3, 'ControlLeft', false);
};
keyboard.addEventListener('input', () => {
    for (const character of keyboard.value) {
        const point = character.codePointAt(0);
        rfb.sendKey(point < 256 ? point : 0x01000000 | point);
    }
    keyboard.value = '';
});
keyboard.addEventListener('keydown', event => {
    const symbols = {Enter:0xff0d,Backspace:0xff08,Tab:0xff09,Escape:0xff1b,ArrowLeft:0xff51,ArrowUp:0xff52,ArrowRight:0xff53,ArrowDown:0xff54};
    if (symbols[event.key]) {
        event.preventDefault();
        rfb.sendKey(symbols[event.key]);
    }
});
