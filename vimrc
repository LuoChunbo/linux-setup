" 非兼容vi模式。去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set nocompatible        

"history存储长度。  
set history=1000         

"检测文件类型  
filetype off  
" 针对不同的文件类型采用不同的缩进格式    
filetype indent on                 
"允许插件    
filetype plugin on  
"启动自动补全  
filetype plugin indent on  

set tabstop=4                " 设置Tab键的宽度        [等同的空格个数]  
set shiftwidth=4  
set softtabstop=4
set expandtab
set smarttab


" 按退格键时可以一次删掉 4 个空格  
set softtabstop=4  
set autoindent
set cindent
 
" No annoying sound on errors  
" 去掉输入错误的提示声音  
set noerrorbells  
set novisualbell  
set t_vb=  
set tm=500  

" Return to last edit position when opening files (You want this!)  
autocmd BufReadPost *  
            \ if line("'\"") > 0 && line("'\"") <= line("$") |  
            \   exe "normal! g`\"" |  
            \ endif  

"显示行号：  
set number  
" set relativenumber
""为方便复制，用<F2>开启/关闭行号显示:  
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>  

"括号配对情况  
set showmatch  
" How many tenths of a second to blink when matching brackets  
set mat=2  

"设置文内智能搜索提示  
" 高亮search命中的文本。  
" set hlsearch            
" 搜索时忽略大小写  
set ignorecase  
" 随着键入即时搜索  
set incsearch  
" 有一个或以上大写字母时仍大小写敏感  
set smartcase  


"==========================================  
" status  
"==========================================  
"显示当前的行号列号：  
set ruler  
""在状态栏显示正在输入的命令  
set showcmd  
  
" Set 7 lines to the cursor - when moving vertically using j/k 上下滚动,始终在中间  
set so=7  
  
"set cursorline              " 突出显示当前行  
  
" 命令行（在状态行下）的高度，默认为1，这里是2  
"set cmdheight=2  
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)  
"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P  
" Always show the status line  
"set laststatus=2  
 
 
"colors and fonts  
"==========================================  
"开启语法高亮  
syntax enable  
syntax on  
  
"配色方案 三种,选一个  
"colorscheme darkblue          " 深蓝色配色方案。  
  
colorscheme desert " 经典配色方案。  
"set background=dark  
  
"同sublime text2  
"colorscheme molokai  
set t_Co=256  
 

"==========================================  
" file encode  
"==========================================  
" 设置新文件的编码为 UTF-8  
set fileencoding=utf8  
"set enc=2byte-gb18030  
" 自动判断编码时，依次尝试以下编码：  
set fileencodings=ucs-bom,utf-8,gb18030,default  
" gb18030 最好在 UTF-8 前面，否则其它编码的文件极可能被误识为 UTF-8  
  
" Use Unix as the standard file type  
set ffs=unix,dos,mac  
    
" 如遇Unicode值大于255的文本，不必等到空格再折行。  
" set formatoptions+=m  
" 合并两行中文时，不在中间加空格：  
" set formatoptions+=B  


