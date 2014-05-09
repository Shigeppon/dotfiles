" -------------------
" 色の設定
" -------------------
syntax on
"colorscheme my
"colorscheme darkblue
colorscheme molokai
let g:molokai_original = 1
"256色表示モードにする
set t_Co=256

"highlight LineNr ctermfg=darkyellow    " 行番号
"highlight NonText ctermfg=darkgrey
"highlight Folded ctermfg=blue
"highlight SpecialKey cterm=underline ctermfg=darkgrey
"highlight SpecialKey ctermfg=grey " 特殊記号

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

"新しい行のインデントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set backupdir=$HOME/backup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"クリップボードをWindowsと連携
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"スワップファイル用のディレクトリ
set directory=$HOME/backup
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:>\ ,extends:<
"行番号を表示する
set number
"シフト移動幅
set shiftwidth=2
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の  が対応する空白の数
set tabstop=4
"カーソルを行頭、行末で止まらないようにする
"set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
"set nowrapscan
"縦幅
"set lines=50
"横幅
"set columns=150
"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
"日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0
"タブ幅をリセット
"au BufNewFile,BufRead * set tabstop=2 shiftwidth=2

:set backspace=indent,eol,start
":set statusline=%F%m%r%h%w\%=[FORMAT=%{&ff}]\[TYPE=%Y]\%{'[ENC='.(&fenc!=''?&fenc:&enc).']'}[ASCII=\%03.3b]\[HEX=\%02.2B]\[POS=%05l/%05L,%05v][%p%%]
:set statusline=%F%m%r%h%w\%=[FORMAT=%{&ff}]\[TYPE=%Y]\%{'[ENC='.(&fenc!=''?&fenc:&enc).']'}[%p%%]
:set laststatus=2

nnoremap <Space>.   :<C-u>edit $MYVIMRC<Enter>
nnoremap <Space>s.  :<C-u>source $MYVIMRC<Enter>
nnoremap <C-h>      :<C-u>help<Space>
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><Enter>
nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bb :b#<CR>


filetype plugin indent on

"mkd.vimにおいてファイルオープン時に自動的に折りたたまれないようにする
let g:vim_markdown_folding_disabled=1
set foldlevel=2
