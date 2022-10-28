-- System Info
local is_windows = vim.loop.os_uname().version:match "Windows"
local is_wsl = (function()
  local output = vim.fn.systemlist "uname -r"
  return not not string.find(output[1] or "", "WSL")
end)()

local is_mac = vim.fn.has("macunix") == 1
local is_linux = not is_wsl and not is_mac

-- IME auto cmd, only wsl implemented
if is_wsl then
  local im_select_path = "im-select.exe"
  local im_normal_mode = "1033"
  local im_tmp_file = "/tmp/nvim-im-select.tmp"

  local function store_ime()
    vim.fn.jobstart(im_select_path .. " > " .. im_tmp_file)
  end

  local function change_ime(ime)
    vim.fn.jobstart(im_select_path .. " " .. ime)
  end

  local function change_to_store()
    change_ime("$(cat " .. im_tmp_file .. ")")
  end

  local function change_to_normal()
    change_ime(im_normal_mode)
  end

  vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave", "VimEnter" }, {
    callback = function(args)
      local event = args.event
      if event == "InsertLeave" or event == "VimEnter" then
        store_ime()
        change_to_normal()
      end
      if event == "InsertEnter" then
        change_to_store()
      end
    end
  })
end
