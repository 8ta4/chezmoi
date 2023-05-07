" https://github.com/neovim/neovim/blob/9248dd77ac58bd23721dc4e156e43ed5e9ada338/runtime/doc/nvim.txt#L25-L34
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings#:~:text=set%20clipboard%5E%3Dunnamed%2Cunnamedplus
set clipboard^=unnamed,unnamedplus
