require "core.settings"
require "plugins"
require "core.keymaps"
require "core.autocommands"

if vim.g.vscode then
  require "core.vscode"
end
