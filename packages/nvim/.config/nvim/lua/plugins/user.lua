return {

  -- Load LuaSnip with custom paths for snippets
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- include the default AstroNvim config for LuaSnip
      require("astronvim.plugins.configs.luasnip")(plugin, opts)
      -- load snippets from vscode-style paths
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })
    end,
  },

  -- Configure nvim-cmp and add vim-react-snippets
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "saadparwaiz1/cmp_luasnip", -- Snippet completion
      "mlaursen/vim-react-snippets", -- React snippets
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      -- Setup vim-react-snippets
      require("vim-react-snippets").lazy_load()
      -- Modify default mappings or other cmp configurations
      opts.mapping["<C-x>"] = cmp.mapping.select_next_item()
      return opts
    end,
  },

  -- Other plugins, e.g., vim-cursorword, alpha-nvim, etc.
  {
    "itchyny/vim-cursorword",
    event = { "BufEnter", "BufNewFile" },
    config = function()
      vim.api.nvim_command "augroup user_plugin_cursorword"
      vim.api.nvim_command "autocmd!"
      vim.api.nvim_command "autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0"
      vim.api.nvim_command "autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif"
      vim.api.nvim_command "autocmd InsertEnter * let b:cursorword = 0"
      vim.api.nvim_command "autocmd InsertLeave * let b:cursorword = 1"
      vim.api.nvim_command "augroup END"
    end,
  },

  -- Example customization of another plugin
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "       o    .   _     .",
        "          .     (_)         o",
        "   o      ____            _       o",
        "  _   ,-/   /)))  .   o  (_)   .",
        " (_)  \\_\\  ( e(     O             _",
        " o       \\/' _/   ,_ ,  o   o    (_)",
        "  . O    _/ (_   / _/      .  ,        o",
        "     o8o/    \\\\_/ / ,-.  ,oO8/( -TT",
        "    o8o8O | } }  / /   \\Oo8OOo8Oo||     O",
        "   Oo(\"\"o8\"\"\"\"\"\"\"\"\"\"\"\"\"8oo\"\"\"\"\"\"\"\")",
        "  _   \\'                  '   /'   o",
        " (_)    \\                       /    _   .",
        "      O  \\           _         /    (_)",
        "o   .     -. .----<(o)_--. .-'",
        "   --------(_/------(_<_/--\\_)--------hjw",
      }
      return opts
    end,
  },
}
