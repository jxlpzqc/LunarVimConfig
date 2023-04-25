return {
  "glepnir/lspsaga.nvim",
  event = "BufEnter",
  config = function()
    local saga = require("lspsaga")
    local keymap = vim.keymap.set
    saga.setup({
      ui = { border = "rounded" },
      lightbulb = { virtual_text = false }
    })
    keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true, desc = "Open finder" })
    keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { silent = true, desc = "Peek definitions" })
    keymap({ "n", "v" }, "ga", "<cmd>Lspsaga code_action<CR>", { silent = true, desc = "Show code actions" })
    -- Diagnsotic jump can use `<c-o>` to jump back
    keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
    keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
    -- Only jump to error
    keymap("n", "[E", function()
      require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
    end, { silent = true })
    keymap("n", "]E", function()
      require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
    end, { silent = true })
  end
}
