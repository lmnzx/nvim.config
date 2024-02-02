vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader>F", "<cmd>Telescope file_browser<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>/", "<cmd>:noh<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>:ZenMode<cr>", { noremap = true })
