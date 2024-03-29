-- User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- Change Dashboard Text
local vscodelogo = {
  "            ██████   ",
  "          ██████████ ",
  " ███    ████████████ ",
  "  ██████████   █████ ",
  "    ██████     █████ ",
  "  ██████████   █████ ",
  " ███    ████████████ ",
  "          ██████████ ",
  "            ██████   "
}
lvim.builtin.alpha.dashboard.section.header.val = vscodelogo
lvim.builtin.alpha.dashboard.section.header.opts.hl = "Identifier"
-- Other builtin config
lvim.builtin.terminal.active = true
-- Disable Open mapping because goto insert mode by C-\ C-n
lvim.builtin.terminal.open_mapping = nil
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.highlight.enable = true

-- set lualine
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.inactive_sections.lualine_a = { "mode" }

-- set which key
lvim.builtin.which_key.setup.plugins.registers = true

-- lvim.builtin.project.patterns = { ".git", ".svn" };
lvim.builtin.project.manual_mode = true
