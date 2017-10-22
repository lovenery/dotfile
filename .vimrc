syntax on

""""""""""""""""""
"使用Space取代Tab
set expandtab
"縮排使用的Space數
set shiftwidth=4
set softtabstop=4
"一個Tab的寬度=4
set tabstop=4
""""""""""""""""""

"顯示行號(:set nonu來取消)
set number

"按照C語言自動調整縮進長度
set cindent

"自動縮排:按Enter後停在相同行數
set autoindent

"調整編碼
set fileencodings=utf8,big5,gbk,latin1
set <C-u>=^U
set <C-d>=^D
map <C-u> :set fileencoding=utf8
map <C-d> :set fileencoding=big5
" Ctrl+u, Ctrl+d 設置編碼.
" Origin: Ctrl-D move half-page down. Ctrl-U move half-page up.

" 超快速搜尋
set incsearch

" 標記關鍵字(:noh來取消) =hls
set hlsearch

" 啟用行游標提示
set cursorline

" 高亮當前列 (垂直)。
"set cursorcolumn

" 顯示右下角設定值
set ruler

"Vim 於 Linux、Mac、Putty 貼上時 自動切換成 Paste 模式
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

"set t_Co=256 "default
colorscheme delek
