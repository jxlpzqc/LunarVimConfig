return {
  "iamcco/markdown-preview.nvim",
  run = "cd app && npm install",
  ft = "markdown",
  cmd = "MarkdownPreview",
  config = function()
    vim.g.mkdp_auto_start = 1
  end,
}
-- End markdown
