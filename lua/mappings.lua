require "nvchad.mappings"
local M = {}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start / continue debugger"
    },
  }
}
M.VimTex = {
  plugin = true,
  n = {
    ["<leader>ll"] = {
      "<cmd> VimtexCompile <CR>",
      "Compile Latex"
    },
  },
}

return M
