set number
set backspace=indent,eol,start

let mapleader=","

"*****************
"* vim-plug core *
"*****************

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  let g:installation_finished = 'yes'

  autocmd VimEnter * PlugInstall
endif

"***********
"* plugins *
"***********

call plug#begin(expand('~/.vim/plugged'))
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"Plug 'fatih/molokai'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

set autowrite

au filetype go inoremap <buffer> . .<C-x><C-o>

map <C-y> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>e
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
autocmd FileType go nmap <leader>cb <Plug>(go-coverage-browser)
autocmd FileType go nmap <leader>i <Plug>(go-imports)
autocmd FileType go nmap <leader>l <Plug>(go-metalinter)
autocmd FileType go nmap <leader>dd <Plug>(go-decls-dir)
autocmd FileType go nmap <leader>cc <Plug>(go-callers)
autocmd FileType go nmap <leader>cp <Plug>(go-channel-peers)
autocmd FileType go nmap <leader>wc <Plug>(go-whicherrs)

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_deadline = "60s"
let g:go_auto_sameids = 1

"***********
"* colors *
"***********"
"let g:rehash256 = 1
"let g:molokai_original = 1
"colorscheme molokai

"*****************
"* shortcuts *
"*****************

"* goimports: ,i *
"* gobuild: ,b *
"* gorun: ,r *
"* gotest: ,t *
"* gocoverage: ,c *
"* gometalinter: ,l *
"* gocoveragebrowser: ,cb *
"* godoc: :GoDoc or Shift+k *
"* goinfo(show info of function): :GoInfo *
"* gotoimplementation: ctrl-] *
"* goback: ctrl-o or ctrl+t(recomended) *
"* godeclsdir: ,dd *
"* who call the function: :GoReferrers *
"* gofiles(show files that make a package): :GoFiles *
"* fill struct: :GoFillStruct *
"* godeps(show dependencies): :GoDeps *
"* gowhicherrs(to see the error tree(origin)): :GoWhicherrs or ,wc *
"* gochannelpeers(to know what the history of channel): :GoChannelPeers or ,cp *
"* gocallers: :GoCallers or ,cc *
"* implement interface: :GoImpl INTERFACE_HERE_WITH_PACKAGE or :GoImpl YOUR_STRUCT *YOUR_STRUCT fmt.Stringer *
"* share code with playground: :GoPlay *
"* rename: :GoRename NAME_HERE *
"* jump to next function: ]] or count]] *
"* jump to previous function: [[ or count[[ *
"* delete function: d]] *
"* select code: v]] and then ]] to select more *
"* at the end to the word: ,a *
"* in normal: vif, dif, vaf, daf *
"* delete: d *
"* undo: u *
"* next error: ctrl+n *
"* previous error: ctrl+m *
"* :<line> (go to line) *
"* close window: :ccl *

"* open the NERDTree: ctrl+y *

"* reference: https://gist.github.com/krlvi/d22bdcb66566261ea8e8da36f796fa0a *
