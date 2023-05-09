
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

path+=('/home/reo/.config/emacs/bin')
path+=('/home/reo/.local/bin')
path+=('/home/reo/.cargo/bin')

# Wine Versions
alias 617wine="WINEPREFIX=$HOME/.wine617 $HOME/.binwine/wine-6.17-x86/bin/wine" # https://github.com/Kron4ek/Wine-Builds/releases/download/6.17/wine-6.17-x86.tar.xz
alias 521wine="WINEPREFIX=$HOME/.wine521 $HOME/.binwine/wine-5.21-x86/bin/wine"
alias 32-617wine="WINEPREFIX=$HOME/.32wine617 WINEARCH=win32 $HOME/.binwine/wine-6.17-x86/bin/wine"

