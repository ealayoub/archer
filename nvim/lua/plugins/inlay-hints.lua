return {
  "MysticalDevil/inlay-hints.nvim",
  event = "LspAttach",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("inlay-hints").setup()
  end,
  vim.keymap.set("n", "<leader>i", ":InlayHintsToggle<CR>", {desc = "Toggle Inlay Hints"})
}
