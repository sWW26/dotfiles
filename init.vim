set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set numberwidth=4
syntax enable

if (has("termguicolors"))
 set termguicolors
endif


if !exists('g:vscode')
    call plug#begin()

    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'artanikin/vim-synthwave84'
    Plug 'itchyny/lightline.vim'
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
        \ }
    Plug 'ionide/Ionide-vim', {
        \ 'do':  'install.cmd',
        \}
    Plug 'morhetz/gruvbox'
    Plug 'jacoborus/tender.vim'

    call plug#end()

    let g:gruvbox_contrast_dark='medium'
    colorscheme tender

    if has('nvim') && exists('*nvim_open_win')
      augroup FSharpShowTooltip
        autocmd!
        autocmd CursorHold *.fs,*.fsi,*.fsx call fsharp#showTooltip()
      augroup END
    endif
endif

