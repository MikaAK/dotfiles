import * as React from "/Applications/Oni.app/Contents/Resources/app/node_modules/react"
import * as Oni from "/Applications/Oni.app/Contents/Resources/app/node_modules/oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
  oni.input.unbind('<C-p>')
  oni.input.unbind('<Tab>')
  oni.input.unbind('<C-n>')
  oni.input.unbind('<C-tab>')
  oni.input.unbind('<m-e>')
  oni.input.unbind('<down>')
  oni.input.unbind('<up>')

  oni.input.bind('<esc>', 'language.rename.cancel')

  oni.input.bind(['<shift-tab>', '<up>'], 'contextMenu.previous')
  oni.input.bind(['<tab>', '<down>'], 'contextMenu.next')
  oni.input.bind(['<shift-tab>', '<up>'], 'menu.previous')
  oni.input.bind(['<tab>', '<down>'], 'menu.next')
  // oni.input.bind('<m-w>', () => document.querySelector('.tab.selected .corner.enable-hover').click())
}


export const deactivate = (_oni: Oni.Plugin.Api) => {
}

export const configuration = {
  "oni.useDefaultConfig": false,
  "oni.loadInitVim": true,
  "ui.fontSmoothing": "subpixel-antialiased",
  "ui.colorscheme": "molokai",
  "editor.fontFamily": "Hack",
  "ui.fontFamily": "Hack",
  "sidebar.enabled": false,
  "experimental.particles.enabled": true,
  "editor.textMateHighlighting.enabled": false
  "language.elixir.languageServer.command": "/Users/mika/Documents/elixir-ls/release/language_server.sh",
  "language.elixir.languageServer.rootFiles": ["mix.exs"],
  "language.elixir.languageServer.arguments": ["--stdio"],
  "language.elixir.languageServer.configuration": {}
}
