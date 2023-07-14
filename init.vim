if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
  call dein#update()
endif

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('neoclide/coc.nvim', { 'rev': 'release', 'merged': 0 })

nmap <space>e <Cmd>CocCommand explorer<CR>
nnoremap ff :CocList files<CR>



map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <BS> <Nop>
map <Enter> <Nop>
map <Tab> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <BS> <Nop>
inoremap <Enter> <Nop>
inoremap <Tab> <Nop>

"map <C-]> gf
map <C-t> <C-o>
map <C-[> <C-o>

map <Space>] :tn<CR>
map <Space>[ :tp<CR>

nmap <silent> <C-]> <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set number
set ruler
set nolist
set nobackup
set autoindent
set list
set listchars=eol:↩,trail:-,tab:>\ ,extends:<
set expandtab
set ts=4 sw=4 sts=0
set shiftwidth=4
set showmatch
set smartindent
set smarttab
set tabstop=4
set whichwrap=b,s,h,l,<,>,[,]
set ic
set autowrite
set mouse=niv
"set clipboard=unnamed
set directory=/tmp
set laststatus=2
set hlsearch
set noswapfile
set noignorecase
set viminfo=
"set viminfo='20,\"200,:20,%,n~/.viminfo
set suffixesadd=.rb,.ru,.rake,.js,.es6,.ts,.vue

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
autocmd BufWritePre * :%s/\s\+$//ge
autocmd FileType ruby autocmd BufWritePre * :%s/\t/  /ge
autocmd FileType coffee autocmd BufWritePre * :%s/\t/  /ge
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufEnter *.slim :set syn=slim
autocmd BufEnter *.rb,*.slim,*.yml,*.ru,*.rake,*.coffee,*coffee.erb,*.scss,*.es6,*.js,*.vue,*ts :set ts=2 sw=2 sts=0
autocmd FileType vue syntax sync fromstart

"autocmd BufWritePost *.rb,*.rake
"      \ if exists('b:git_dir') && !empty(glob(b:git_dir.'/hooks/ctags')) |
"      \   call system('"'.b:git_dir.'/hooks/ctags"') |
"      \ endif

" vim-tags
" let g:vim_tags_directories = ['.git/../']
" let g:vim_tags_main_file = 'tags'
" let g:vim_tags_extension = 'tags'
" let g:vim_tags_ctags_binary='/usr/local/bin/ctags'
" let g:vim_tags_project_tags_command = '/usr/local/bin/ctags -R -f tags --exclude=*/app/frontend/* --exclude=*/bin/* --exclude=*/public/javascripts/* --exclude=*/assets/* --exclude=node_modules/* --exclude=*/config/* --exclude=*/node_modules/* --exclude=vendor/* --sort=yes --languages=ruby --tag-relative=yes . 2>/dev/null'
" let g:vim_tags_gems_tags_command = ''
" let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore', '.js', '.es6', '.coffee', '.log']
" let g:vim_tags_auto_generate = 1
set tags=tags;

" auto-ctags.vim
" let g:auto_ctags = 1
" let g:auto_ctags_tags_args = ['--tag-relative=yes', '--recurse=yes', '--sort=yes', '--exclude=vendor', '--exclude=*/vendor/bundle/*.rb', '--exclude=*/app/frontend/*', '--exclude=*/bin/*', '--exclude=*/public/javascripts/*', '--exclude=*/assets/*', '--exclude=node_modules/*', '--exclude=*/config/*', '--exclude=*/node_modules/*']
" let g:auto_ctags_filetype_mode = 0
" let g:auto_ctags_bin_path = '/usr/local/bin/ctags'
" set tags=tags;

" deoplete
let g:python_host_prog =  expand('/usr/bin/python')
let g:python3_host_prog = expand('/usr/bin/python3')
let g:deoplete#enable_at_startup = 1

" alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'
let g:vue_pre_processors = ['pug', 'scss']
let g:vue_pre_processors = 'detect_on_enter'
