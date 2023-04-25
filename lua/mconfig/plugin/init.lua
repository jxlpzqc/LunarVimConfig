lvim.plugins = {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
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
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  -- Begin markdown
  {
    "preservim/vim-markdown",
    event = "BufRead",
    ft = { "markdown" },
  },
  -- End markdown
  require("mconfig.plugin.lsp-signature"),
  -- require("mconfig.plugin.rainbow"),
  require("mconfig.plugin.hop"),
  -- require("mconfig.plugin.git-blame"),
  require("mconfig.plugin.lspsaga"),
  {
    "github/copilot.vim",
    config = function ()
      vim.cmd([[
        inoremap <silent><script><expr> <C-i> copilot#Accept("\<CR>")
      ]])
      vim.g.copilot_no_tab_map = true
    end
  }
}
