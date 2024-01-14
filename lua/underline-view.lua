
-- Underline configuration
vim.cmd[[
    autocmd VimEnter * highlight StatusLine ctermfg=35 ctermbg=0
    autocmd InsertEnter  * highlight StatusLine ctermfg=33 ctermbg=0
    autocmd InsertLeave * highlight StatusLine ctermfg=35 ctermbg=0
]]

-- Underline information
vim.o.statusline = '%< %F %r %= %l:%c:%b %{&ff} %{&enc} '
