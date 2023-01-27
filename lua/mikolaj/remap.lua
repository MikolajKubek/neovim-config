vim.g.mapleader = " "
-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

-- move whole block up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- stay in the same place after appending line with line below using 'J'
vim.keymap.set("n", "J", "mzJ`z")

-- keep coursor in the middle while half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over without losing vim clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- use leader y/d to yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

--
vim.keymap.set("i", "<C-c>", "<Esc>")

-- disable 'Q'
vim.keymap.set("n", "Q", "<nop>")

-- format file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- fill the formula replacing the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- set current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
