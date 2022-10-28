--[[
  My Lunnarvim custom config file
]]

-- Put config dir into lua package path
local config_dir = get_config_dir()
package.path = package.path .. join_paths(config_dir,"?.lua")

require("mconfig.general")
require("mconfig.option")
require("mconfig.keymap")
require("mconfig.predefined")
require("mconfig.plugin")
require("mconfig.autocmd")
require("mconfig.dap")
