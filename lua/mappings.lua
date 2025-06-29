require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- debugging
vim.keymap.set("n", "<F5>", function()
  require("dap").continue()
end, { desc = "run" })

vim.keymap.set("n", "<F10>", function()
  require("dap").step_over()
end)

vim.keymap.set("n", "<F11>", function()
  require("dap").step_into()
end, { desc = "step into" })

vim.keymap.set("n", "<F12>", function()
  require("dap").step_out()
end, { desc = "step out" })

vim.keymap.set("n", "<Leader>b", function()
  require("dap").toggle_breakpoint()
end, { desc = "toggle breakpoint" })

vim.keymap.set("n", "<Leader>B", function()
  require("dap").set_breakpoint()
end, { desc = "set breakpoint" })

vim.keymap.set("n", "<Leader>lp", function()
  require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
end, { desc = "set breakpoint log" })

vim.keymap.set("n", "<Leader>dr", function()
  require("dap").repl.open()
end, { desc = "REPL" })

vim.keymap.set("n", "<Leader>dl", function()
  require("dap").run_last()
end, { desc = "run last" })

vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
  require("dap.ui.widgets").hover()
end, { desc = "hover" })

vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
  require("dap.ui.widgets").preview()
end, { desc = "preview" })

vim.keymap.set("n", "<Leader>df", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.frames)
end, { desc = "centered float frames" })

vim.keymap.set("n", "<Leader>ds", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.scopes)
end, { desc = "centered float scopes" })

vim.keymap.set("n", "<Leader>du", function()
require("dapui").toggle()
end, { desc = "toggle dap ui" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
