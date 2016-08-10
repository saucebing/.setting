# system depending aliases
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  alias ls="ls --color=auto "
elif [[ "$OSTYPE" == "darwin"* ]]; then
  export CLICOLOR=1
  export LSCOLOR="ExGxBxDxCxEgEdxbxgxcxd"
  alias ls="ls -G "
  alias vim="mvim -v"
fi

alias pbcopy='xclip -selection clipboard'

# open the file using gnome default program
alias go='gnome-open'

# alias only for zsh
#alias zshconfig="vim ~/.zshrc"
#alias valgrind="valgrind --leak-check=full"

# vim: ft=zsh
