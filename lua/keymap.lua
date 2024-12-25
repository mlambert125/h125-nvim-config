-- Clear highlights on search when pressing , in normal mode
vim.keymap.set('n', ',', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- jj for escape (for normie keyboards, particularly laptop)
vim.keymap.set('i', 'jj', '<Esc>', { silent = true, desc = 'Switch from I to Normal Mode' })

-- , to get out of visual mode
vim.keymap.set('v', ',', '<Esc>', { silent = true, desc = 'Switch from V to Normal Mode' })

-- a few helix style g-navigations
vim.keymap.set('n', 'ge', 'Gzz', { silent = true, desc = 'Goto end of file' })
vim.keymap.set('n', 'gh', '^', { silent = true, desc = 'Goto start of line' })
vim.keymap.set('n', 'gl', '$', { silent = true, desc = 'Goto end of line' })
vim.keymap.set('v', 'ge', 'Gzz', { silent = true, desc = 'Goto end of file' })
vim.keymap.set('v', 'gh', '^', { silent = true, desc = 'Goto start of line' })
vim.keymap.set('v', 'gl', '$', { silent = true, desc = 'Goto end of line' })

-- Recenter after going to end of file
vim.keymap.set('n', 'G', 'Gzz', { noremap = true, desc = 'Goto end of file' })

-- Keep selection when indenting/deindenting multiple lines in visual mode
vim.keymap.set('v', '<', '<gv', { noremap = true, desc = 'Indent lines, keeping selection' })
vim.keymap.set('v', '>', '>gv', { noremap = true, desc = 'De-indent lines, keeping selection' })

-- Buffer navigation
vim.keymap.set('n', 'gn', ':bn<CR>', { noremap = true, desc = 'Goto next buffer' })
vim.keymap.set('n', 'gN', ':bp<CR>', { noremap = true, desc = 'Goto previous buffer' })
vim.keymap.set('n', 'gp', ':bp<CR>', { noremap = true, desc = 'Goto previous buffer' })

-- Go back/forward
vim.keymap.set('n', 'ga', '<C-o>', { noremap = true, desc = 'Go back' })
vim.keymap.set('n', 'gA', '<C-i>', { noremap = true, desc = 'Go forward' })

-- Close buffer
vim.keymap.set('n', '<leader>x', ':bd<CR>', { noremap = true, desc = 'Close buffer' })

-- Execute lua
vim.keymap.set('v', '<leader>x', ":'<,'>lua<CR>", { noremap = true, desc = 'Execute lua' })

-- Move lines in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, desc = 'Shift selected lines down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, desc = 'Shift selected lines up' })

-- Recenter after page-up/page-down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, desc = 'Page Down (and recenter)' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, desc = 'Page Up (and recenter)' })

-- Maintain cursor position on line join
vim.keymap.set('n', 'J', 'mzJ`z', { noremap = true, desc = 'Join lines' })

-- Recenter after search navigation
vim.keymap.set('n', 'n', 'nzz', { noremap = true, desc = 'Next search match' })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true, desc = 'Previous search match' })

-- Enter in normal mode opens a line but stays in normal
vim.keymap.set('n', '<CR>', 'o<Esc>', { noremap = true, desc = 'Open a new line (stay in normal mode)' })

-- X highlights the current line, or extends the selection in visual mode
vim.keymap.set('n', 'x', 'V^', { noremap = true, desc = 'Highlight current line' })
vim.keymap.set('v', 'x', 'j', { noremap = true, desc = 'Extend selection down' })

-- U is redo
vim.keymap.set('n', 'U', '<C-r>', { noremap = true, desc = 'Redo' })

-- space c opens the init.lua file
vim.keymap.set('n', '<leader>c', ':e ~/.config/nvim/init.lua<CR>', { noremap = true, desc = 'Edit init.lua' })

vim.keymap.set('n', '<leader>t', ':Neotree toggle=true source=filesystem<CR>', { noremap = true, desc = 'Toggle file tree' })
vim.keymap.set('n', '<leader>g', ':Neotree toggle=true source=git_status<CR>', { noremap = true, desc = 'Toggle file tree' })
vim.keymap.set('n', '<leader>b', ':Neotree toggle=true source=buffers<CR>', { noremap = true, desc = 'Toggle file tree' })
vim.keymap.set('n', '<leader>y', ':Neotree toggle=true source=document_symbols<CR>', { noremap = true, desc = 'Toggle file tree' })

vim.keymap.set('n', '<leader>h', function() require("telescope.builtin").help_tags() end, { desc = 'Search Help' })
vim.keymap.set('n', '<leader>k', function() require("telescope.builtin").keymaps() end, { desc = 'Search Keymaps' })
vim.keymap.set('n', '<leader>f', function() require("telescope.builtin").find_files({ hidden = true }) end, { desc = 'Search Files' })

vim.keymap.set('n', '<leader>S', function() require("telescope.builtin").builtin() end, { desc = 'Search Select Telescope' })
vim.keymap.set('n', '<leader>w', function() require("telescope.builtin").grep_string() end, { desc = 'Search current Word' })
vim.keymap.set('n', '<leader>/', function() require("telescope.builtin").live_grep() end, { desc = 'Search by Grep' })
vim.keymap.set('n', '<leader>d', function() require("telescope.builtin").diagnostics() end, { desc = 'Search Diagnostics' })
vim.keymap.set('n', '<leader>E', function() require("telescope.builtin").resume() end, { desc = 'Search Resume' })
vim.keymap.set('n', '<leader>.', function() require("telescope.builtin").oldfiles() end, { desc = 'Search Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader><leader>', function() require("telescope.builtin").buffers() end, { desc = 'Find existing buffers' })
vim.keymap.set('n', 'gr', function() require("telescope.builtin").lsp_references() end, { desc = 'Goto References' })

vim.keymap.set('n', '<leader>p', function() require("goto-preview").goto_preview_definition({}) end, { desc = 'Goto Preview Definition' })
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open oil' })

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto Definition' })
--vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Goto References' } ) (Moved to telespcope)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Lsp Info' })
vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, { desc = 'Lsp Info' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Goto Implementation' })
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature Help' })
vim.keymap.set('n', '<leader>o', function() vim.lsp.buf.format { async = true } end, { desc = 'Format buffer' })
vim.keymap.set('n', '<leader>r', "<cmd>lua require('renamer').rename()<cr>", { desc = 'Rename' })
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'Code Action' })
