lvim.plugins = {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require('vscode').setup({})
    end
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  {
    "tpope/vim-surround",
  },
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("aerial").setup({
        -- optionally use on_attach to set keymaps when aerial has attached to a buffer
        on_attach = function(bufnr)
          -- Jump forwards/backwards with '{' and '}'
          vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
          vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
        layout = {
          width = 40,
          resize_to_content = false,

        },
        filter_kind = false
      })
      -- You probably also want to set a keymap to toggle aerial
      vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle!<CR>")
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
    config = function()
      vim.cmd([[
        inoremap <silent><script><expr> <C-a> copilot#Accept("\<CR>")
      ]])
      vim.g.copilot_no_tab_map = true
    end
  },
  require("mconfig.plugin.tmux"),
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require('treesitter-context').setup({})
    end
  },
}
