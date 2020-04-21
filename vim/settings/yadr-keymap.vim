" ========================================
" General vim sanity improvements
" ========================================
"
"

"make Y consistent with C and D
" ... firula
" nnoremap Y y$
" function! YRRunAfterMaps()
"   nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
" endfunction

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
" nnoremap 0 ^
" nnoremap ^ 0

" map ; to :
" nmap ; :
" vmap ; :

" <leader># Surround a word with #{ruby interpolation}
map <leader># ysiw#
vmap <leader># c#{<C-R>"}<ESC>

" <leader>$ Surround a word with ${node/shell interpolation}
map <leader>$ ysiw}i$<ESC>
vmap <leader>$ c${<C-R>"}<ESC>

" <leader>" Surround a word with "quotes"
map <leader>" ysiw"
vmap <leader>" c"<C-R>""<ESC>

" <leader>' Surround a word with 'single quotes'
map <leader>' ysiw'
vmap <leader>' c'<C-R>"'<ESC>

" <leader>` Surrount a word with `back tic`
map <leader>` ysiw`
vmap <leader>` c`<C-R>"`<ESC>

" <leader>) or <leader>( Surround a word with (parens)
" The difference is in whether a space is put in
map <leader>( ysiw(
map <leader>) ysiw)
vmap <leader>( c( <C-R>")<ESC>
vmap <leader>) c(<C-R>")<ESC>

" <leader>[ Surround a word with [brackets]
map <leader>[ ysiw[
map <leader>] ysiw]
vmap <leader>[ c[ <C-R>"]<ESC>
vmap <leader>] c[<C-R>"]<ESC>

" <leader>{ Surround a word with {braces}
map <leader>{ ysiw{
map <leader>} ysiw}
vmap <leader>{ c{ <C-R>"}<ESC>
vmap <leader>} c{<C-R>"}<ESC>

" gary bernhardt's hashrocket
" imap <c-l> <space>=><space>

"Go to last edit location with <leader>.
" nnoremap <leader>. '.

"When typing a string, your quotes auto complete. Move past the quote
"while still in insert mode by hitting Ctrl-a. Example:
"
" type 'foo<c-a>
"
" the first quote will autoclose so you'll get 'foo' and hitting <c-a> will
" put the cursor right after the quote
" imap <C-a> <esc>wa

" ==== NERD tree
" Open the project tree and expose current file in the nerdtree with Ctrl-\
" " calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! OpenNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>

" <leader>q to toggle quickfix window (where you have stuff like Ag)
" <leader>oq to open it back up (rare)
" nmap <silent> <leader>qc :cclose<CR>
" nmap <silent> <leader>qo :copen<CR>

"Move back and forth through previous and next buffers
"with <leader>z and <leader>x
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>

" ==============================
" Window/Tab/Split Manipulation
" ==============================
" Move between split windows by using the four directions H, L, K, J
" NOTE: This has moved to vim/settings/vim-tmux-navigator.vim.
" nnoremap <silent> <C-h> <C-w>h
" nnoremap <silent> <C-l> <C-w>l
" nnoremap <silent> <C-k> <C-w>k
" nnoremap <silent> <C-j> <C-w>j

" window(s) keymaps
if has('nvim')
  " enter on normal mode
  tnoremap <C-N> <C-\><C-n>
  " navigate to neighbors windows from terminal mode
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
elseif has('terminal')
  " enter on normal mode
  tnoremap <C-N> <C-W>N
  " navigate to neighbors windows from terminal mode
  tnoremap <C-K> <C-W>k
  tnoremap <C-J> <C-W>j
  tnoremap <C-H> <C-W>h
  tnoremap <C-L> <C-W>l
endif

" navigate to neighbors windows from visual mode
vnoremap <C-K> <C-W>k
vnoremap <C-J> <C-W>j
vnoremap <C-H> <C-W>h
vnoremap <C-L> <C-W>l

" Zoom in
nnoremap <C-W>z <C-W>_<C-W>\|

" Make gf (go to file) create the file, if not existent
nnoremap <C-w>f :sp +e<cfile><CR>
nnoremap <C-w>gf :tabe<cfile><CR>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" create <%= foo %> erb tags using Ctrl-k in edit mode
imap <silent> <C-K> <%=  %><Esc>2hi

" create <%= foo %> erb tags using Ctrl-j in edit mode
imap <silent> <C-J> <%  %><Esc>2hi

" ============================
" Shortcuts for everyday tasks
" ============================

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <leader>cf :let @* = expand("%:~")<CR>
nnoremap <silent> <leader>cr :let @* = expand("%")<CR>
nnoremap <silent> <leader>cn :let @* = expand("%:t")<CR>

"Clear current search highlight by tapping <leader>/
nmap <silent> <leader>/ :nohlsearch<CR>

"(v)im (c)ommand - execute current line as a vim command
" nmap <silent> <leader>vc yy:<C-f>p<C-c><CR>

"(v)im (r)eload
" nmap <silent> <leader>vr :so %<CR>

" Type <leader>hl to toggle highlighting on/off, and show current value.
" noremap <leader>hl :set hlsearch! hlsearch?<CR>

" These are very similar keys. Typing 'a will jump to the line in the current
" file marked with ma. However, `a will jump to the line and column marked
" with ma.  It’s more useful in any case I can imagine, but it’s located way
" off in the corner of the keyboard. The best way to handle this is just to
" swap them: http://items.sjbach.com/319/configuring-vim-right
" nnoremap ' `
" nnoremap ` '

" " ============================
" " SplitJoin plugin
" " ============================
nmap <leader>s :SplitjoinSplit<cr>
nmap <leader>j :SplitjoinJoin<cr>

" Get the current highlight group. Useful for then remapping the color
" map <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" <leader>hp = html preview
" map <silent> <leader>hp :!open %<CR><CR>

" Map Ctrl-x and Ctrl-z to navigate the quickfix error list (normally :cn and
" :cp)
" nnoremap <silent> <C-x> :cn<CR>
" nnoremap <silent> <C-z> :cp<CR>
