execute pathogen#infect()
syntax on
set nu
set tabstop=4 shiftwidth=4

call pathogen#incubate()
call pathogen#helptags()

let Tlist_Ctags_Cmd = '/usr/local/bin/exctags'
noremap T :TlistToggle<CR>

noremap <Leader><F5> :SyntasticToggleMode<CR>
let g:syntastic_python_checkers = ['pylint']
