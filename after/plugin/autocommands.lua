vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

    function! s:gruvbox_material_custom() abort
      " Link a highlight group to a predefined highlight group.
      " See `colors/gruvbox-material.vim` for all predefined highlight groups.
      highlight! link groupA groupB
      highlight! link groupC groupD
    
      " Initialize the color palette.
      " The first parameter is a valid value for `g:gruvbox_material_background`,
      " the second parameter is a valid value for `g:gruvbox_material_foreground`,
      " and the third parameter is a valid value for `g:gruvbox_material_colors_override`.
      let l:palette = gruvbox_material#get_palette('hard', 'mix', {})
      " Define a highlight group.
      " The first parameter is the name of a highlight group,
      " the second parameter is the foreground color,
      " the third parameter is the background color,
      " the fourth parameter is for UI highlighting which is optional,
      " and the last parameter is for `guisp` which is also optional.
      " See `autoload/gruvbox_material.vim` for the format of `l:palette`.
      call gruvbox_material#highlight('groupE', l:palette.red, l:palette.none, 'undercurl', l:palette.red)
    endfunction
    
    augroup GruvboxMaterialCustom
      autocmd!
      autocmd ColorScheme gruvbox-material call s:gruvbox_material_custom()
    augroup END
]]

-- Autoformat
-- augroup _lsp
--   autocmd!
--   autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end
