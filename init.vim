"Change Soournading ' "
"C S Tag
"S veliko S za kreiranje tagova ali se prvo oznaci
"set complete=.,w >>>>>>>>>>>>> autocomplete za trenutni buffer i windows
"vracanje na tacku editovanaj CTRL-O zapovratak na stari CTRL-I
"dodavanje polozaja sa M i kucanje marks za pregled
"korisno prilikom brisanja d ' m >>>>brise od oznake
"idi na zadnje editovanje koristeci '
"selektovanje html tag, uci u visual mode zatim kombinacija tastera a i t
"odnosno i i t za unutrasnji tag
syntax enable
set relativenumber
set nu 
set complete=.,w,b,u "setovanje autocomplete-a"
let g:onedark_termcolors=16
so ~/.config/nvim/plugins.vim "refaktorisan fajl za pluginove
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
"                    

"-------------------visual--------------------"
set background=dark
colorscheme palenight
set noerrorbells visualbell t_vb= 
set autowriteall "automatski sacuvaj
	
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set t_CO=256
set foldcolumn=2 "velicina leve margine od brojeva


"===============SPLITOVANJE==============="
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>


"===============mapiranje==============="
let mapleader = ',' "remapiranje leader tipke na zarez'
"editovanje vimrc fajla"
nmap <leader>ev :tabedit $MYVIMRC <cr>
nmap <leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <leader>es :tabedit ~/.vim/snippets/php.snippets<cr>
nmap <leader><space> :nohlsearch<cr>



"mapiranje tagova
nmap <leader>f :tag<space>
"------------------podesavanje nerdtree-------------
map <C-n> :NERDTreeToggle<CR>
"------------------podesavanje ctrlp--------------
nmap <C-e> :CtrlPMRUFiles<cr>

let g:ctrlp_match_window = 'top, order:ttb, min:1, max:30, results:30'
let NERDTreeHijackNetrw =0


"-------------------------Greplace.vim------------"
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"-------------------------php-cs-fixer------------"
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>
"-------------------------Laravel Specifik------------"
nmap <Leader>lr :e /opt/lamp/lin_php/cms/index.php<cr>

"-------------------------tobys PDV------------"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>
"-------------------------php names------------"
function! IPhpInsertUse()
	    call PhpInsertUse()
	        call feedkeys('a',  'n')
	endfunction
	autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
	autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"-------------------------SNippets zadnji------------"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

"----------------------DugineZagrade---------------"
"++++++++++++++++++++++++++Automatsko sortiranje klasa++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>
"-------------------------auto-comande------------"

"automatsko source-ovanje vimrc fala
augroup sorsovanje
	autocmd!
	autocmd bufwritepost .vimrc source %
augroup end 

"---------------------pretrazivanje------------------------
set hlsearch
set incsearch


"-------------------Spisak korisnih precica-----------------
"copen
