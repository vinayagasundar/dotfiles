vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("i", "jk", "<ESC>")

-- Remove the highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- Plugins Keymap
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree-lua
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local tsstatus, builtin = pcall(require, "telescope.builtin")
if tsstatus then
  keymap.set("n", "<leader>ff", builtin.find_files)
  keymap.set("n", "<leader>fg", builtin.live_grep)
  keymap.set("n", "<leader>fb", builtin.buffers)
  keymap.set("n", "<leader>fh", builtin.help_tags)
end

-- keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
-- keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
-- keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
-- keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
-- keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
