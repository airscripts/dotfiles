local function map(mode, keybind, command)
	vim.keymap.set(mode, keybind, command, { silent = true })
end

map("n", "<C-s>", "<CMD>w<CR>")
map("n", "<leader>[", "<CMD>bn<CR>")
map("n", "<leader>]", "<CMD>bp<CR>")
map("n", "<C-p>", "<CMD>Telescope<CR>")
map("n", "<leader>,n", "<CMD>tabnew<CR>")
map("n", "<leader>,b", "<CMD>bd<CR><CMD>bp<CR>")
map("n", "<C-g>", "<CMD>Telescope live_grep<CR>")
map("n", "<C-f>", "<CMD>Telescope find_files<CR>")
map("n", "<C-t>", "<CMD>NvimTreeToggle<CR><C-w>w")
map("n", "f<C-j>", "<CMD>ToggleTerm direction=float<CR>")
map("n", "<C-j>", "<Esc><CMD>exe v:count1 . 'ToggleTerm'<CR>")

map("i", "<S-Tab>", "<C-d>")

map("v", "<Tab>", ">>")
map("v", "<S-Tab>", "<<")
map("v", "<C-c>", ":OSCYank<CR>")

map("t", "<Esc>", "<C-\\><C-N>")
