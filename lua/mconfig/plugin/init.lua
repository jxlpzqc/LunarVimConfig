lvim.plugins = {
  {
    "Mofiqul/vscode.nvim"
  },
  {
    "tpope/vim-surround",
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle"
  },
  require("mconfig.plugin.hop"),
  require("mconfig.plugin.git-blame"),
  require("mconfig.plugin.lspsaga"),
}
