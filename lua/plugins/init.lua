return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  {
  "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ff69b4" })
      require("dashboard").setup({
        config = {
          header = {
            "",
            "███╗   ███╗ █████╗ ██╗   ██╗ ██████╗ ███╗   ██╗██╗",
            "████╗ ████║██╔══██╗╚██╗ ██╔╝██╔═══██╗████╗  ██║██║",
            "██╔████╔██║███████║ ╚████╔╝ ██║   ██║██╔██╗ ██║██║",
            "██║╚██╔╝██║██╔══██║  ╚██╔╝  ██║   ██║██║╚██╗██║██║",
            "██║ ╚═╝ ██║██║  ██║   ██║   ╚██████╔╝██║ ╚████║██║",
            "╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚═╝",
            "",
          },
        },
      })
    end,
  },

  {
  "lukas-reineke/indent-blankline.nvim",
  enabled = false,
  },

  {
  "shellRaining/hlchunk.nvim",
  event = "BufReadPost",
  config = function()
    require("hlchunk").setup({
      chunk = {
        enable = true,
        notify = false,
        use_treesitter = true,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "┌",
          left_bottom = "└",
          right_arrow = "─",
        },
        style = {
          { fg = "#ffffff" },
          { fg = "#c21f30" },
        },
      },
      indent = { enable = false },
      line_num = { enable = false },
      blank = { enable = false },
    })
  end,
  },

  {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  config = function()
    require "configs.conform"
  end,
  },

  {
  "windwp/nvim-ts-autotag",
    event = "BufReadPost",
    config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_rename = true,
        enable_close = true,
      }
    })
    end,
  },

  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "lua", "html", "typescript", "tsx", "javascript" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
  },
}
