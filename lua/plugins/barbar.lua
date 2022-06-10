local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", " ,", ":BufferPrevious<CR>", opts)
map("n", " .", ":BufferNext<CR>", opts)

-- Goto buffer in position...
map("n", " 1", ":BufferGoto 1<CR>", opts)
map("n", " 2", ":BufferGoto 2<CR>", opts)
map("n", " 3", ":BufferGoto 3<CR>", opts)
map("n", " 4", ":BufferGoto 4<CR>", opts)
map("n", " 5", ":BufferGoto 5<CR>", opts)
map("n", " 6", ":BufferGoto 6<CR>", opts)
map("n", " 7", ":BufferGoto 7<CR>", opts)
map("n", " 8", ":BufferGoto 8<CR>", opts)
map("n", " 9", ":BufferGoto 9<CR>", opts)
map("n", " 0", ":BufferLast<CR>", opts)

-- Close buffer
map("n", " c", ":BufferClose<CR>", opts)
