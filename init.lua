require("options")
require("keymap")
require("autocommands")

--------------------------------------------------------------------------------
-- Lazy
--------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup("plugins")

--------------------------------------------------------------------------------
-- Custom 
--------------------------------------------------------------------------------
-- Execute lua
vim.keymap.set('n', '<leader>ll', function()
    vim.cmd("'a,'b s/^/local /gie")
    vim.cmd("'a,'b s/lambda x: x\\(.*\\)/function(dv_, num) return num\\1 end/gie")
    vim.cmd("'a,'b s/\\[\\(.*\\)\\]/{ \\1 }/gie")
end, { noremap = true, desc = 'cac script cleanup' })
