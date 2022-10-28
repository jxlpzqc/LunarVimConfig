local M = {}

-- cpptools
local cpptools = require("mason-registry").get_package("cpptools")
if cpptools and cpptools:is_installed() then
  local path = cpptools:get_install_path()
  local cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = path .. '/extension/debugAdapters/bin/OpenDebugAD7'
  }
  M.cppdbg = cppdbg
end


return M
