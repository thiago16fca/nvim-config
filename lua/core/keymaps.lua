local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }

  if opts then
    options = vim.tbl_extend("force", options, opts)
  end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a space
vim.g.mapleader = " "

-- Toggle no highlight search
map("n", " h", ":set hlsearch!<cr>")

-- Change : to ;
map("n", ";", ":")

-- Disable arrow keys
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

-- Clear search highlighting with <leader> and c
map("n", "<leader>c", "nohl<cr>")

-- Fast saving with <leader> and s
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<C-c>:w<CR>")

-- Close all windows and exit from Neovim with <leader> and q
map("n", "<C-q>", ":qa!<CR>")

-- Move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- NvimTree (File Explorer)
map("n", " e", ":NvimTreeToggle<CR>") -- open/close

-- Delete Buffers
map("n", ",ç", "bd<cr>")

-- Visual Block 
map("n", " v", "<C-v>")
