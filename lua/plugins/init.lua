return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  { "Issafalcon/lsp-overloads.nvim" },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "Jorenar/nvim-dap-disasm",
    dependencies = { "mfussenegger/nvim-dap", "carriga/nvim-dap-ui", },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", "theHamsta/nvim-dap-virtual-text" },
    config = function()
      local dapDisam = require "dap-disasm"
      dapDisam.setup {
        -- Add disassembly view to elements of nvim-dap-ui
        dapui_register = true,

        -- Add custom REPL commands for stepping with instruction granularity
        repl_commands = true,

        -- The sign to use for instruction the exectution is stopped at
        sign = "DapStopped",

        -- Number of instructions to show before the memory reference
        ins_before_memref = 16,

        -- Number of instructions to show after the memory reference
        ins_after_memref = 16,

        -- Labels of buttons in winbar
        controls = {
          step_into = "Step Into",
          step_over = "Step Over",
          step_back = "Step Back",
        },

        -- Columns to display in the disassembly view
        columns = {
          "address",
          "instructionBytes",
          "instruction",
        },
      }
      require("nvim-dap-virtual-text").setup()
    end,
  },
  {
    "NotAShelf/direnv.nvim",
    config = function()
      require("direnv").setup {}
    end,
  },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "javascript",
        "html",
        "css",
        "glsl",
      },
    },
  },
  {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = true,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
