-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk" })
keymap.set("i", "ii", "<ESC>", { desc = "exit insert mode with ii" })
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "save and quit" })
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "quit without saving" })
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "save" })

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split windows equal width" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "close split window" })
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "make split window height shorter" })
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "make split windows height taller" })
keymap.set("n", "<leader>sl", "<C-w>>5", { desc = "make split windows width bigger" })
keymap.set("n", "<leader>sh", "<C-w><5", { desc = "make split windows width smaller" })

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "open a new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "close a tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "previous tab" })

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>", { desc = "put diff from current to other during diff" })
keymap.set("n", "<leader>cj", ":diffget 1<CR>", { desc = "get diff from left (local) during merge" })
keymap.set("n", "<leader>ck", ":diffget 3<CR>", { desc = "get diff from right (remote) during merge" })
keymap.set("n", "<leader>cn", "]c", { desc = "next diff hunk" })
keymap.set("n", "<leader>cp", "[c", { desc = "previous diff hunk" })

-- Quickfix keymaps
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "jump to next quickfix list item" })
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "jump to prev quickfix list item" })

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "toggle maximize tab" })

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "toggle file explorer" })
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>", { desc = "toggle focus to file explorer" })
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "find file in file explorer" })

-- Telescope
keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files({ hidden = true }) end,
	{ desc = "find files" })
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "live grep" })
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "buffers" })
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "help tags" })
keymap.set(
	"n",
	"<leader>fs",
	require("telescope.builtin").current_buffer_fuzzy_find,
	{ desc = "fuzzy find in current buffer" }
)
keymap.set("n", "<leader>fo", require("telescope.builtin").lsp_document_symbols, { desc = "lsp document symbols" })
keymap.set("n", "<leader>fi", require("telescope.builtin").lsp_incoming_calls, { desc = "lsp incoming calls" })
keymap.set("n", "<leader>fm", function()
	require("telescope.builtin").treesitter({ default_text = ":method:" })
end, { desc = "treesitter methods" })

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "toggle git blame" })
keymap.set("n", "<leader>gc", ":GitBlameCopyFileURL<CR>", { desc = "copy remote commit URL" })

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "add file to harpoon" })
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "toggle harpoon quick menu" })
keymap.set("n", "<leader>h1", function()
	require("harpoon.ui").nav_file(1)
end, { desc = "navigate to harpoon file 1" })
keymap.set("n", "<leader>h2", function()
	require("harpoon.ui").nav_file(2)
end, { desc = "navigate to harpoon file 2" })
keymap.set("n", "<leader>h3", function()
	require("harpoon.ui").nav_file(3)
end, { desc = "navigate to harpoon file 3" })
keymap.set("n", "<leader>h4", function()
	require("harpoon.ui").nav_file(4)
end, { desc = "navigate to harpoon file 4" })
keymap.set("n", "<leader>h5", function()
	require("harpoon.ui").nav_file(5)
end, { desc = "navigate to harpoon file 5" })
keymap.set("n", "<leader>h6", function()
	require("harpoon.ui").nav_file(6)
end, { desc = "navigate to harpoon file 6" })
keymap.set("n", "<leader>h7", function()
	require("harpoon.ui").nav_file(7)
end, { desc = "navigate to harpoon file 7" })
keymap.set("n", "<leader>h8", function()
	require("harpoon.ui").nav_file(8)
end, { desc = "navigate to harpoon file 8" })
keymap.set("n", "<leader>h9", function()
	require("harpoon.ui").nav_file(9)
end, { desc = "navigate to harpoon file 9" })

-- LSP
keymap.set("n", "<leader>gg", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "show hover info" })
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "go to definition" })
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "go to declaration" })
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "go to implementation" })
keymap.set("n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "go to type definition" })
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "go to references" })
keymap.set("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "show signature help" })
keymap.set("n", "<leader>rr", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "rename symbol" })
keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "format file" })
keymap.set("v", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "format selection" })
keymap.set("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "code action" })
keymap.set("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "open diagnostic float" })
keymap.set("n", "<leader>gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "go to previous diagnostic" })
keymap.set("n", "<leader>gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "go to next diagnostic" })
keymap.set("n", "<leader>tr", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { desc = "show document symbols" })
keymap.set("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>", { desc = "show completion" })

-- Fucking macro off
keymap.set('n', 'Q', 'q', { desc = "record a macro" })
keymap.set('n', 'q', '<Nop>', {})
