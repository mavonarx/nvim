local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
     require "plugins.configs.lspconfig"
     require "custom.configs.lspconfig"
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
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
        -- c
        "clangd",
        "clang-format",
        "codelldb",
        -- lua
        "lua-language-server",
        -- python
        "pyright",
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
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
     vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "mfussenegger/nvim-dap",
    config = function(_,_)
      require("core.utils").load_mappings("dap")
    end
  },
}
return plugins
