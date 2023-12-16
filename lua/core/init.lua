local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- cursor line
opt.cursorline = true

-- backspace
opt.backspace = "indent,eol,start"

-- mouse
opt.mouse = "a"

-- keep signcolumn on by default
opt.signcolumn = 'yes'

-- decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- better completion experience
opt.completeopt = 'menuone,noselect'

-- terminal colors
opt.termguicolors = true
