vim.g.mapleader = " "
vim.keymap.set("n", "<leader>vp", vim.cmd.Ex)

-- multiple line selection and their movements in visual mode
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--vim.keymap.set("x", "<C-u>", ":set virtualedit=all<CR>")
--vim.keymap.set("x", "<C-u>p",
--    ":s`>'\\%V.*`&<C-r>=strpart(getregtype(), 0, 1) ==# 'V' ? submatch(0) : submatch(1)<CR>`g<CR>")

--
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--vim.keymap.set("n", "<leader>vwm", function()
--    require("vim-with-me").StartVimWithMe()
--end)
--vim.keymap.set("n", "<leader>svwm", function()
--    require("vim-with-me").StopVimWithMe()
--end)

-- greatest remap ever
--vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)

-- remove file from buffer
vim.keymap.set("n", "<leader>c", "<cmd>bd<CR>zz")

-- Horizontal split
vim.keymap.set("n", "<leader>hs", ":split<CR>")

-- Vertical split
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>")

-- Buffer switching with Alt + hjkl
vim.keymap.set("n", "<A-[>", "<cmd>bp<CR>zz")
vim.keymap.set("n", "<A-]>", "<cmd>bn<CR>zz")


-- Switch to the window to the left
vim.keymap.set("n", "<A-h>", "<C-w>h")

-- Switch to the window to the right
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- Switch to the window above
vim.keymap.set("n", "<A-k>", "<C-w>k")

-- Switch to the window below
vim.keymap.set("n", "<A-j>", "<C-w>j")

-- find mode in visual mode
vim.keymap.set("x", "<leader>f", "y/<C-R>=escape(@\", '/')<CR><CR>", { noremap = false, silent = false })
