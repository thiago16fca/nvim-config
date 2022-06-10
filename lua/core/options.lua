local global = vim.g
local option = vim.opt

-- Color Theme
vim.cmd("color goodwolf")

-- General
option.swapfile = false -- Don"t use swap file
option.completeopt = "menuone,noinsert,noselect"  -- Autocomplete options
option.mouse = "a" -- Enable mouse support
--option.clipboard = "unnamedplus" -- Copy/paste to system clipboard

-- Neovim UI
option.number = true -- Set line number
option.colorcolumn = "80" -- Line length marker at 80 columns
option.termguicolors = true -- Enable 24-bit RGB colors
option.linebreak = true -- Wrap on word boundary
option.cursorline = true -- Highlight current line under cursor

-- Tabs, Indent
option.expandtab = true -- Use space instead of tabs
option.shiftwidth = 2 -- Shift 2 spaces when tab
option.tabstop = 2 -- 1 tab == 2 spaces
option.smartindent = true --  Auto indent new lines

-- Memory, CPU
option.lazyredraw = true -- Faster scrolling
