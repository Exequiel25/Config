alias exa='exa --icons'
alias update='sudo pacman -Syu --noconfir;yay -Syu;pkill -RTMIN+4 i3blocks'
alias depos-clean='sudo pacman -Sc;yay -Sc'
alias remove-non_used-repos='echo "only as root";pacman -Qqd | pacman -Rsu -;pacman -Qtdq | pacman -Rns -'
