export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"

export PATH=~/.npm-global/bin:$PATH

export __NV_PRIME_RENDER_OFFLOAD=1
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)


source $ZSH/oh-my-zsh.sh

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# # If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac

# Aliases
alias nh='nvim ~/.config/hypr/hyprland.conf'
alias raino='function _raino() { g++ "$1" -o a.out && ./a.out; }; _raino'
alias oula='function _oula() { gcc "$1" -o a.out && ./a.out; }; _oula'
alias oula_t='function _oula_t() { gcc "$1" -lpthread -o a.out && ./a.out; }; _oula_t'
alias l="eza --sort Name"
alias ls="eza"
alias lsl="eza -l"
alias lsla="eza -la"
alias lsa="eza -a"
alias lst="eza --tree"
alias kaka="cowsay bye | lolcat && poweroff"
alias cd="z"
alias ff="fastfetch"
alias nzsh="nvim ~/.zshrc"
alias nwez="nvim ~/.wezterm.lua"
alias c="clear"
alias sauce="source ~/.zshrc"
alias cat="bat"
alias integrated="supergfxctl --mode Integrated"
alias hybrid="supergfxctl --mode Hybrid"
alias mux="supergfxctl --mode AsusMuxDgpu"
alias img="wezterm imgcat"

export PATH="~/.local/bin:$PATH"

eval "$(zoxide init zsh)"


# history stuff
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Keybindings
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/amro.omp.json)"
# eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/pure.omp.json)"

fortune | cowsay | lolcat

export EDITOR=nvim
export VISUAL=nvim
export SYSTEMD_EDITOR=nvim
