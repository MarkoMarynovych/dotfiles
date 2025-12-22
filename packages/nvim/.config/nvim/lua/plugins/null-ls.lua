return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Add Prettier as a source for formatting
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "json", "css", "scss", "html", "markdown" }, -- specify filetypes for Prettier
        }),
      },
    })
  end,
}
