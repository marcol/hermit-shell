require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>r", ":w<CR>:!python3 %<CR>")
map("n", "<leader>st", function ()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)
end)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
