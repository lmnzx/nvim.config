require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
vim.keymap.set("n", "<leader>+", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>ss", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>")
vim.keymap.set("n", "<M-n>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-p>", "<cmd>cprev<CR>")
vim.keymap.set("n", "-", "<cmd>Oil<CR>")

-- lspsaga keymap
vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>")
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>")
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_prev<CR>")

vim.keymap.set({ "n", "v" }, "<leader>st", require("stay-centered").toggle)

vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
