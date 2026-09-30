""""""""""""""""""""""
" Leader
""""""""""""""""""""""
" let mapleader=,
" can't set leaders in Obsidian vim, so the key just has to be used consistently.
" However, it needs to be unmapped, to not trigger default behavior: https://github.com/esm7/obsidian-vimrc-support#some-help-with-binding-space-chords-doom-and-spacemacs-fans
unmap ,

" map ; to : in normal mode, so that I don’t rely on the shift key
" nmap ; :

" no modifier key for jumping to next word
" nmap + *

" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
" Wrapped lines goes down/up to next row, rather than next line in file.
nmap <Down> gj
nmap <Up> gk


" Moving to next/prev paragraph
nmap [ {
nmap ] }

" Yank to system clipboard
set clipboard=unnamed

" Surround
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
map ," :surround_double_quotes<CR>
map ,' :surround_single_quotes<CR>
map ,( :surround_brackets<CR>
map ,) :surround_brackets<CR>
map ,[ :surround_square_brackets<CR>
map ,{ :surround_curly_brackets<CR>
map ,} :surround_curly_brackets<CR>

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
"exmap togglefold obcommand editor:toggle-fold
"nmap zo :togglefold

"exmap unfoldall obcommand editor:unfold-all
"nmap zR :unfoldall

"exmap foldall obcommand editor:fold-all
"nmap zM :foldall

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Pane Relief: https://github.com/pjeby/pane-relief
"exmap tabnext obcommand pane-relief:go-next
"nmap gt :tabnext
"exmap tabprev obcommand pane-relief:go-prev
"nmap gT :tabprev
" Same as CMD+\
"nmap g\ :tabnext

"exmap openlink obcommand editor:open-link-in-new-leaf
"nmap go :openlink

" [g]oto [f]ile (= Follow Link under cursor)
"exmap followLinkUnderCursor obcommand editor:follow-link
"nmap gf :followLinkUnderCursor

" g; go to last change - https://vimhelp.org/motion.txt.html#g%3B
nmap g; u<C-r>

" rename file
"exmap renameFile obcommand Obsidian-VimEx:file-rename-modal
"nmap gr :renameFile

" mapping vs/hs as workspace split
"exmap vs obcommand workspace:split-vertical
"exmap hs obcommand workspace:split-horizontal
"nmap <C-w>v :vs
"nmap <C-w>s :hs

" window controls
"exmap wq obcommand workspace:close
"exmap q obcommand workspace:close

" focus
"exmap focusLeft obcommand editor:focus-left
"exmap focusRight obcommand editor:focus-right
"exmap focusBottom obcommand editor:focus-bottom
"exmap focusTop obcommand editor:focus-top
"nmap <C-w>h :focusLeft
"nmap <C-w>l :focusRight
"nmap <C-w>j :focusBottom
"nmap <C-w>k :focusTop

" Blockquote
"exmap toggleBlockquote obcommand editor:toggle-blockquote
"nmap ,< :toggleBlockquote
"nmap ,> :toggleBlockquote

" complete a Markdown task
"exmap toggleTask obcommand editor:toggle-checklist-status
"nmap ,x :toggleTask

" Zoom in/out
"exmap zoomIn obcommand obsidian-zoom:zoom-in
"exmap zoomOut obcommand obsidian-zoom:zoom-out
"nmap zi :zoomIn
"nmap zo :zoomOut

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :nohlsearch<CR><CR>

" Make tab in v mode indent code
vmap <Tab> >gv
vmap <S-Tab> <gv

" Make tab in normal mode indent code
nmap <Tab> V>
nmap <S-Tab> V<
