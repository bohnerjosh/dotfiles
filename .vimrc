set ts=4
set sw=4
set expandtab
set visualbell
set number
set background=dark
set mouse=a
set makeprg=make\ -f\ ~/.dotfiles/.vim_custom/Makefile
command CC :make makec FILENAME=%
command CCT :make makecthreaded FILENAME=%
command CPP :make makecpp FILENAME=%

autocmd FileType make setlocal noexpandtab

colorscheme industry
