local adapters = require("mconfig.dap.adapter")
local configurations = require("mconfig.dap.configuration")


local dap = require("dap")

dap.adapters = adapters
dap.configurations = configurations

-- Load launch.json before running
lvim.builtin.dap.on_config_done = function()
  lvim.builtin.which_key.mappings["d"]["s"] = { function()
    local vscode = require('dap.ext.vscode')
    vscode.load_launchjs(".vscode/launch.json", {
      -- mapping other languages
      cppdbg = { 'c', 'cpp', 'rust' }
    })
    dap.continue()
  end, "Start" }
end
