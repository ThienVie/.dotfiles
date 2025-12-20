### Recovery
cp ~/.bashrc ~/.bashrc.bkp

# iterm2
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

alias bash_restore="cp ~/.bashrc.bkp ~/.bashrc" # Restore .bashrc
alias bash_update="cp ~/.bashrc ~/.bashrc.bkp"  # Recover .bashrc

### Aliases

# 7zip
alias 7zz='/.commands/MANUAL/7zz'

# ls
alias l='ls -lah'
alias ls='ls -G'

# mysql
alias mysql='/usr/local/mysql-8.0.33-macos13-x86_64/bin/mysql --user=root -p'

# CTF
alias picoCTF='cd $HOME/Documents/Coding/Hacking\ Lab/PicoCTF'

# python
alias pip='pip3'
alias python='python3'

# weather
alias wttr='${HOME}/.commands/wttr'

# iterm2
export PATH='$HOME/.iterm2/:$PATH'

### Environment Variables
export LDFLAGS=-L/usr/local/opt/ruby/lib
export CPPFLAGS=-I/usr/local/opt/ruby/include
export PATH=/usr/local/bin:/usr/bin:/bin

### Terminal Prompt
export PS1='\n\[\e[0;38;5;33m\]┌──\[\e[0;38;5;33m\](\[\e[0;1;91m\]\u\[\e[0;1;91m\]㉿\[\e[0;1;91m\]\h\[\e[0;38;5;33m\])\[\e[0;38;5;33m\]-\[\e[0;38;5;33m\][\[\e[0;97m\]\w\[\e[0;38;5;33m\]]\[\e[0;38;5;33m\]-\[\e[0;38;5;33m\][\[\e[0;38;5;159m\]\A\[\e[0;38;5;33m\]]\n\[\e[0;38;5;33m\]└─\[\e[0;91m\]\$\[\e[0m\] '

### Other Variables
export TMPDIR=/var/folders/tw/37rx046j3jz2vyc37mhbkqd80000gn/T/
export LANG=de_DE.UTF-8
export TERM=screen-256color
export SHELL=/bin/bash

# fzf
export FZF_DEFAULT_COMMAND="find . -maxdepth 1 | sed 's/^..//'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
  --bind "ctrl-y:execute-silent(echo {+} | pbcopy)"
  --bind "ctrl-e:execute(echo {+} | xargs -o code)"
  --preview "([[ -f {} ]] && (file --mime-type -b {} | grep -q '^image/' && ($HOME/.iterm2/imgcat {}) || (bat --style=numbers --color=always {} || cat {}))) ||
    ([[ -d {} ]] && (tree -L 2 -C {} | less)) ||
    echo {} 2> /dev/null | head -200"
'

eval "$(fzf --bash)"
alias fzfnvim='nvim $(fzf --preview="bat --color=always {}")'

### better cd
eval "$(zoxide init --cmd cd bash)"

### thefuck
eval "$(thefuck --alias)"

# Created by `pipx` on 2024-12-06 15:26:49
export PATH="$HOME/.local/bin:$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
