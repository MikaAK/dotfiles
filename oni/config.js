"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    oni.input.unbind('<C-p>');
    oni.input.unbind('<Tab>');
    oni.input.unbind('<C-n>');
    oni.input.unbind('<C-tab>');
    oni.input.unbind('<m-e>');
    oni.input.unbind('<down>');
    oni.input.unbind('<up>');
    oni.input.bind('<esc>', 'language.rename.cancel');
    oni.input.bind(['<shift-tab>', '<up>'], 'contextMenu.previous');
    oni.input.bind(['<tab>', '<down>'], 'contextMenu.next');
    oni.input.bind(['<shift-tab>', '<up>'], 'menu.previous');
    oni.input.bind(['<tab>', '<down>'], 'menu.next');
    oni.input.bind('<m-w>', function () { return document.querySelector('.tab.selected .corner.enable-hover').click(); });
};
exports.deactivate = function (_oni) {
};
exports.configuration = {
    "oni.useDefaultConfig": false,
    "oni.loadInitVim": true,
    "ui.fontSmoothing": "subpixel-antialiased",
    "ui.colorscheme": "molokai",
    "editor.fontFamily": "Hack",
    "ui.fontFamily": "Hack",
    "sidebar.enabled": false,
    "editor.textMateHighlighting.enabled": false
};
