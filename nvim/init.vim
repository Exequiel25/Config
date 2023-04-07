if exists('g:vscode')
    " VSCode extension
    source $HOME/.config/nvim/vscode/settings.vim
else
    " ordinary Neovim
    set number
endif