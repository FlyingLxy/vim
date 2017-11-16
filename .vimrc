filetype off                 " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" FlyingFox Plugins
Plugin 'Valloric/YouCompleteMe'   " 代码自动补全
Plugin 'marijnh/tern_for_vim'	" 自动补全js
Plugin 'ctrlpvim/ctrlp.vim'		" 快速文件搜索 导航
Plugin 'tacahiroy/ctrlp-funky'	" 类似 go to definition
Plugin 'dyng/ctrlsf.vim', {'on': '<Plug>CtrlSFVwordExec'}	" ctrlP 插件 提供sublime grep搜索
Plugin 'ggVGc/vim-fuzzysearch' 		" 模糊查找功能
Plugin 'rking/ag.vim' 	" 提供快速grep功能
Plugin 'gorodinskiy/vim-coloresque' 	" css 色值高亮
Plugin 'bronson/vim-trailing-whitespace' 	" 将代码行最后无效的空格标红
" Plugin 'tpope/vim-obsession' | Plugin 'dhruvasagar/vim-prosession' 	" 保存当前打开文件、split窗口、buffer的状态，下次在该目录下运行vim自动还原
Plugin 'MattesGroeger/vim-bookmarks' 	" 在左侧添加书签、注释等。
Plugin 'Valloric/MatchTagAlways' 	" 高亮显示匹配的标签
Plugin 'szw/vim-maximizer'	 " 最大化当前窗口\返回之前状态切换，在多个split窗口非常有用
Plugin 'Lokaltog/vim-easymotion'	" 跳转到任意位置 空格搜索两个字符，快速跳转 / 代替vim默认搜索功能
Plugin 'vim-scripts/matchit.zip'	" 快速匹配 () [] {}
Plugin 'gcmt/wildfire.vim'	" 快速选取代码块
Plugin 'alvan/vim-closetag'		" 自动关闭html , xml 标签
Plugin 'scrooloose/nerdcommenter'		" 快速注释工具
Plugin 'tpope/vim-surround' 	" 给单词添加 单引号， 双引号， 中括号等
Plugin 'Raimondi/delimitMate'		" 自动补全 (),[],{},<>
Plugin 'godlygeek/tabular'		" 代码按 = 或者: 对齐
Plugin 'terryma/vim-multiple-cursors'		" 多光标操作
Plugin 'hail2u/vim-css3-syntax'		" css3 语法高亮
Plugin 'tpope/vim-markdown'		" markdown 语法高亮
Plugin 'pangloss/vim-javascript'	" js 语法高亮
Plugin 'mxw/vim-jsx'		" react jsx 语法高亮
" Plugin 'othree/javascript-libraries-syntax.vim'		" 一些js library 语法高亮
" Plugin 'burnettk/vim-angular' 	" angular相关
Plugin 'ruanyl/vim-fidget', {'do': 'npm install'}		" 打开 3个split窗口，分别是 css,js,html 快速写一些小dmeo比较实用
Plugin 'heavenshell/vim-jsdoc', {'for': ['javascript', 'jsx']}		" 光标定位在方法上面， 自动生成js doc
Plugin 'sjl/gundo.vim', {'on': 'GundoToggle'} 		" 查看文件历史修改记录， 移动到某一个时间点 r 查看 enter 返回到这个状态
Plugin 'Chiel92/vim-autoformat', {'on': 'Autoformat'} 	" 格式化js ,json ,html ,css ,scss
Plugin 'posva/vim-vue' 			" vue 语法高亮
Plugin 'walm/jshint.vim'		" js 语法检测
Plugin 'isRuslan/vim-es6'		" es6 语法高亮
Plugin 'scrooloose/syntastic' 	" 语法错误提示
" Plugin 'othree/yajs.vim'		" js语法高亮
Plugin 'mattn/emmet-vim'		" emmet html快速编写
Plugin 'wavded/vim-stylus' 		" stylus高亮

" markdown 预览
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'


" Color schemes
Plugin 'bling/vim-airline'  " buffer 美化
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasr/molokai'  " 主题
Plugin 'flazz/vim-colorschemes'
" Plugin 'dracula/vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/scrooloose/nerdtree.git', {'on': 'NERDTreeToggle'}  " 侧边栏树型结构


Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'gilligan/vim-lldb' " c/c++ debugger

syntax enable
syntax on
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundge for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set lazyredraw
set ttyfast
" ----------------
" 界面配置
" ----------------
set nocompatible 	" 关闭 vi 兼容模式
set number 		" 显示行号
set laststatus=2	" 启动状态栏信息
set cursorcolumn	" 突出显示column
set cursorline		" 突出显示当前行
set ruler 		" 打开状态栏标尺
" set ts=4  		" 设置tab 长度 4
set sw=4
set magic
set ignorecase smartcase 	" 搜索时忽略大小写
set hlsearch 		" 搜索时高亮显示被找到的文本
set smartindent 	" 新行自动缩进
set backspace=indent,eol,start  " 不设定在插入状态无法用退格和 delete键
set showmatch 	" 高粱显示匹配括号 set matchpairs+=<:>		" spgecially for html
set matchtime=2		" 匹配括号高亮的时间
set novisualbell 	" 不要闪
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割"
set wildmenu " 增强模式中的命令行自动完成操作"
set nowrap
" set syntax=on
" ----------------
" 主题
" ----------------
colorscheme solarized
set background=dark
"colorscheme molokai 	" 主题
" let g:molokai_original = 1
" color dracula
" ----------------------------------------------------------------------------
" vim-colors-solarized
" ----------------------------------------------------------------------------
let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_hitrail = 1


autocmd FileType coffee,javascript,c,conf,python,java setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120 expandtab
autocmd FileType html,htmldjango,xhtml,haml,vue,stylus,styl,markdown setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=0 expandtab
autocmd FileType sass,scss,css setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120 expandtab
" ---------------
"  string
" --------------
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set termencoding=utf-8
set ffs=unix,dos,mac         " Use Unix as the standard fige type
set formatoptions+=m
set formatoptions+=B         " When joining gines, don't insert a space between two multi-byte characters.
set completeopt=longest,menu " behaviour of insert mode completion
set wildignore=**.o,*~,.swp,*.bak,*.pyc,*.class " Ignore compiled files
" set guifont=Source\ Code\ Pro\ for\ Powerline:h14
" --------------
"  YouCompgeteMe
" --------------
" 配置默认的ycm_extra_conf.py文件路径
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_python_binary_path = '/usr/bin/python3.6'
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1	"  在注释输入中也能补全
let g:ycm_key_list_select_completion = ['<Tab>', '<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
" let g:ycm_collect_identifiers_from_comments_and_strings = 1		"注释和字符串中的文字也会被收入补全
let g:ycm_seed_identifiers_with_syntax=1         " 开启语法关键字补全
" let g:ycm_confirm_extra_conf=0	" 打开vim时不再询问是否加载ycm_extra_conf.py配置
" let g:ycm_error_symbol = '>>'                    "　错误的显示符号
" let g:ycm_warning_symbol = '>*'                  "　警告的显示符号
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::', '(', 'use ', 'namespace ', '\'],
            \   'cs,java,typescript,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'cs,java,typescript,d,python,perl6,scala,vb,elixir,go' : ['.','re!(?=[a-zA-Z]{3,4})'],
            \   'html': ['<', '"', '</', ' '],
            \   'vim' : ['re![_a-za-z]+[_\w]*\.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \   'haskell' : ['.', 're!.'],
            \   'scss,css': [ 're!^\s{2,4}', 're!:\s+' ],
            \   'javascript': ['.', 're!(?=[a-zA-Z]{3,4})'],
            \ }




" --------------
"  Tern_for_vim
" -------------
" 鼠标停留在方法内时显示参数提示
let g:tern_show_argument_hints = 'on_hold'
" 补全时显示函数类型定义
let g:tern_show_signature_in_pum = 1
" 跳转到浏览器
nnoremap <leader><leader>hb :TernDocBrowse<cr>
" 显示变量定义
nnoremap <leader><leader>ht :TernType<cr>
" 跳转到定义处
nnoremap <leader><leader>hf :TernDef<cr>
" 显示文档
nnoremap <leader><leader>hd :TernDoc<cr>
" 预览窗口显示定义处代码
nnoremap <leader><leader>hp :TernDefPreview<cr>
" 变量重命名
nnoremap <leader><leader>hr :TernRename<cr>
" location 列表显示全部引用行
nnoremap <leader><leader>hs :TernRefs<cr>
autocmd FileType javascript,vue setlocal omnifunc=tern#Complete

" -------------
"  NERDTree
" ------------
let mapleader = ","
" let NERDChristmasTree = 1
" let NERDTreeCaseSensitiveSort = 1
" let NERDTreeChDirMode = 1
" let NERDSpaceDelims=1
" let NERDCompactSexyComs=1
let NERDTreeHighlightCursorline=1
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$','^\.git$', '^\.svn$', '^\.hg$' ]
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
map <leader>t :NERDTreeToggle<cr>
map <leader>ee :e ~/.vimrc<cr>
map <leader>ss :source ~/.vimrc<cr>
map <leader>jj :%!python -mjson.tool<cr>

" 在浏览器预览 for mac
function! ViewInBrowser(name)
	let file = expand("%:p")
	let l:browsers = {
		\"cr": "open -a \"Google Chrome\"",
		\"fx": "open -a Firefox",
		\"sf": "open -a safari"
	\}
	let htdocs='Users/leon1/'
	let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
	let file = '"'. file . '"'
	exec ":update " .file
	echo file .' ## '. htdocs
	if strpos == -1
		exec ":silent !". l:browsers[a:name] ." file://". file
	else
		let file = substitute(file, htdocs, "http://127.0.0.1:8090/", "g")
		let file = substitute(file, '\\'. '/', "g")
		exec ":silent ! ". l:browsers[a:name] file
	endif
endfunction
nmap <leader>cr :call ViewInBrowser("cr")<cr>
nmap <leader>fx :call ViewInBrowser("fx")<cr>
nmap <leader>sf :call ViewInBrowser("sf")<cr>
" ---------------
"  ctrlp search  文件搜索  f当前目录下， b为buffer中， m 最近打开
" --------------
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>m :CtrlPMRU<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = {
	\'dir': '\v[\/](node_modules|target|dist)|\.(git|hg|svn|rvm)$',
	\'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
	\}
let g:ctrlp_follow_symlinks=1

" --------------
"  ctrlp-funky    效果不好
" ------------
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_heihlight = 1
let g:ctrlp_extensions = ['vue']
" 搜索当前的函数列表
nnoremap <leader>fu :CtrlPFunky<cr>
" 搜索当前光标下对应单词的函数
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" -------------
"  ctrlsf.vim  匹配当前搜索内容的文件以及内容所在位置。n 为搜索当前光标下单词
" ------------
let g:ctrlsf_ackprg = 'ag'
vmap <C-F>F <Plug>CtrlSFVwordExec
vmap <C-F>f <Plug>CtrlSFVwordPath
nmap <C-F>n <Plug>CtrlSFCwordPath
nmap <C-F> <Plug>CtrlSFPrompt
let g:ctrlsf_mapping = {
	    \'open'    : ["<CR>", "o"],
	    \'openb'   : 'O',
	    \'split'   : '',
	    \'vsplit'  : '<C-O>',
	    \'tab'     : 't',
	    \'tabb'    : 'T',
	    \'popen'   : 'p',
	    \'quit'    : 'q',
	    \'next'    : '<C-J>',
	    \'prev'    : '<C-K>',
	    \'pquit'   : 'q',
	    \'loclist' : '',
	\}
"------------
"  ag.vim  // 文件内容匹配
" -----------
nnoremap <leader><leader>a :Ag!<space>
let g:ag_working_path_mode='r'

" -----------------
"  vim-fuzzysearch
" -----------------
nnoremap <leader><leader>/ :FuzzySearch<cr>

" -----------------
"  vim-airline
" -----------------
let g:airline_theme="powerlineish"
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ----------------------------------------------------------------------------
" vim-trailing-whitespace
" Mapping: <leader><space>
" ----------------------------------------------------------------------------
map <leader><space> :FixWhitespace<cr>


" ----------------------------------------------------------------------------
" vim-bookmarks
" ---------------------------------------------------------------------------
let g:bookmark_no_default_key_mappings = 1
nnoremap <leader><leader>m :BookmarkToggle<CR>
nnoremap <leader>i :BookmarkAnnotate<CR>
nnoremap <leader>a :BookmarkShowAll<CR>
nnoremap <leader>j :BookmarkNext<CR>
nnoremap <leader>k :BookmarkPrev<CR>
nnoremap <leader>c :BookmarkClear<CR>
nnoremap <leader>x :BookmarkClearAll<CR>

" ----------------------------------------------------------------------------
" vim-maximizer
" ----------------------------------------------------------------------------
nnoremap <tab> :MaximizerToggle<CR>

" ----------------------------------------------------------------------------
" vim-easymotion
" ----------------------------------------------------------------------------
map <space> <Plug>(easymotion-s2)
map / <Plug>(easymotion-sn)
map / <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1


" ----------------------------------------------------------------------------
" wildfire.vim
" Mapping: <Enter>
" ----------------------------------------------------------------------------
let g:wildfire_objects = {
	\ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
	\ "html,xml" : ["at"],
\ }
let g:wildfire_fuel_map = "<ENTER>"
let g:wildfire_water_map = "<BS>"

" ----------------------------------------------------------------------------
" delimitMate
" ----------------------------------------------------------------------------
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_expand_cr = 1

"shift+v 选择要注释的行
",cc  注释单行或者选中行
",cm  多行注释
",cu  解开注释
",ci  在注释和取消注释之间切换


" ----------------------------------------------------------------------------
"  tabular
" ----------------------------------------------------------------------------
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a" :Tabularize /"<CR>
vmap <Leader>a" :Tabularize /"<CR>


" ----------------------------------------------------------------------------
" vim-markdown
" ----------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_frontmatter=1


" ----------------------------------------------------------------------------
" vim-jsx
" ----------------------------------------------------------------------------
let g:jsx_ext_required = 0 " Allow JSX in normal JS files



" ----------------------------------------------------------------------------
"  vim-jsdoc
" ----------------------------------------------------------------------------
let g:jsdoc_default_mapping = 0
autocmd FileType javascript,vue nnoremap <Leader><Leader>d :call jsdoc#insert()<CR>

" ----------------------------------------------------------------------------
" gundo.vim
" ----------------------------------------------------------------------------
nnoremap <leader>h :GundoToggle<CR>
let g:gundo_auto_preview = 0

" ----------------------------------------------------------------------------
" vim-autoformat
" require: npm install -g js-beautify
" ----------------------------------------------------------------------------
autocmd FileType javascript,json,html,css,scss,vue noremap <buffer><leader><leader>f :Autoformat<cr>

" -------------------------------------------------
"  closetag option
" -------------------------------------------------
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.ejs,*.vue"


" ejs 语法高亮
au BufNewFile,BufRead *.ejs set filetype=html

" 快速改变窗口尺寸
map <leader>vr1 :vertical res 50%<cr>
map <leader>vr2 :vertical res 100%<cr>

" ag
" let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlsf_ackprg = "ag"
let g:ctrlsf_position = "right"


" 1、 \cc 注释当前行和选中行
" 2、 \cn 没有发现和\cc有区别
" 3、 \c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情
" 况执行反转注释操作
" 4、 \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
" 5、 \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
" 6、 \cs 添加性感的注释，代码开头介绍部分通常使用该注释
" 7、 \cy 添加注释，并复制被添加注释的部分
" 8、 \c$ 注释当前光标到改行结尾的内容
" 9、 \cA 跳转到该行结尾添加注释，并进入编辑模式
" 10、\ca 转换注释的方式，比如： /**/和//
" 11、\cl \cb 左对齐和左右对其，左右对其主要针对/**/
" 12、\cu 取消注释


" vue 文件语法高亮
au BufNewFile,BufRead *.vue setf vue


" ----------------------------------------------------------------------------
" syntastic
" ----------------------------------------------------------------------------
let g:syntastic_error_symbol='✘'
let g:syntastic_warning_symbol='❗'
let g:syntastic_style_error_symbol='»'
let g:syntastic_style_warning_symbol='•'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting=1
let g:syntastic_javascript_checkers=['jshint']
" to see error location list
let g:syntastic_always_populate_loc_list=0
let g:syntastic_auto_loc_list=0
let g:syntastic_loc_list_height=5
function! ToggleErrors()
	let old_last_winnr = winnr('$')
	lclose
	if old_last_winnr == winnr('$')
		" Nothing was closed, open syntastic error location panel
		Errors
	endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>


" --------------------------------
"  emmet
" --------------------------------
" div#idname    生成id=idname的div元素
" div.classname    生成class=classname的div元素
" div>p    生成嵌套p元素的div元素
" div>p*3    生成嵌套3个p标记的div元素
" div>lorem100    输入100个单词的随机文本
"
" 下面是一些常用快捷键：
"
" <c-y>,    展开简写式
" <c-y>d    Balance a Tag Inward(选中包围的标签?)
" <c-y>D    Balance a Tag Outward
" <c-y>n    进入下个编辑点
" <c-y>N    进入上个编辑点
" <c-y>i    更新<img>图像尺寸
" <c-y>m    合并文本行
" <c-y>k    删除标签
" <c-y>j    分解/展开空标签
" <c-y>/    注释开关
" <c-y>a    从URL生成anchor标签
" <c-y>A    从URL生成引用文本
let g:user_emmet_leader_key='<C-U>'
let g:user_emmet_mode='a'


" ------------------------------------------
"  vim-surround 单词替换两边符号
" ------------------------------------------
" cs"'  " -> '
" cs'<q> ' -> <q></q>
" ds'   删除'
"


" ------------------------------------------
"  vim-javascript 高亮
" ------------------------------------------
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let javascript_enable_domhtmlcss = 1

" ------------------------------------------
"  css3 highlighting
" ------------------------------------------
augroup VimCSS3Syntax
	autocmd!
        autocmd FileType css setlocal iskeyword+=-
augroup END

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" vim 自身命令行模式智能补全
set wildmenu

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
	wa
	let flag = ''
	if a:confirm
		let flag .= 'gec'
	else
		let flag .= 'ge'
	endif
	let search = ''
	if a:wholeword
		let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
	else
		let search .= expand('<cword>')
	endif
	let replace = escape(a:replace, '/\&~')
	execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>


" ========================
" markdown 预览插件
" ========================
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）

let g:mkdp_auto_start = 0
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
" markdown 文件的时候打开一次

let g:mkdp_auto_open = 0
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
" 览窗口

let g:mkdp_auto_close = 1
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
" 自动关闭预览窗口

let g:mkdp_refresh_slow = 0
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
" 更新预览
"
let g:mkdp_command_for_global = 0
" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
" 文件可以使用改命令

" 普通模式
nmap <Leader>show <Plug>MarkdownPreview
" 插入模式
"imap <Leader> <Plug>MarkdownPreview
" 普通模式
nmap <Leader>stop <Plug>StopMarkdownPreview
" 插入模式
"imap <silent> <F9> <Plug>StopMarkdownPreview
