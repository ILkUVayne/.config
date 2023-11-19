export ZSH="/home/luoyang/.oh-my-zsh"


ZSH_THEME="fino"


plugins=(
	git
	z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

 source $ZSH/oh-my-zsh.sh
 source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# neofetch --ascii_distro arch
 source <(kubectl completion zsh)

export PATH=/usr/local/php/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/luoyang/go/bin
# 防止已windows文件格式clone
git config --global core.autocrlf false
