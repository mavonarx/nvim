local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
     require "configs.lspconfig"
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- rust
        "rust-analyzer",
        "cmake-language-server",
        -- c
        "clangd",
        "clang-format",
        "codelldb",
        -- lua
        "lua-language-server",
        -- python
        "pyright",
        -- java
        -- -- java
        "jdtls",
      },
    },
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },

  {
    "mfussenegger/nvim-jdtls",
  },

  {
    "mbbill/undotree",
    lazy=false,
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
     vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "mfussenegger/nvim-dap",
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end,
  },
  {
    "lervag/vimtex",
    ft = {"tex", "bib"},
    -- Use init for configuration, don't use the more common "config".
  },
}
return plugins
