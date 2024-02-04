vim.g.mapleader = " "

-- Telescope file browser
vim.api.nvim_set_keymap("n", "<leader>F", "<cmd>Telescope file_browser<cr>", { noremap = true })

-- clear highlights
vim.api.nvim_set_keymap("n", "<leader>nh", "<cmd>:noh<cr>", { noremap = true })

-- zen mode
vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>:ZenMode<cr>", { noremap = true })

-- window management
vim.api.nvim_set_keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.api.nvim_set_keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
vim.api.nvim_set_keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.api.nvim_set_keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.api.nvim_set_keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
