# Set the path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Add Rust's Cargo bin directory to your PATH
export PATH="$PATH:$HOME/.cargo/bin"

# (Optional) Use a custom directory for Oh My Zsh plugins and themes
# export ZSH_CUSTOM=/path/to/new-custom-folder

# Load the Pure prompt from local clone (see install instructions below)
fpath+=("$HOME/.zsh/pure")

# Uncomment and run these lines during first setup to install Pure:
# mkdir -p "$HOME/.zsh"
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# Plugins to load (keep minimal to avoid slow shell startup)
plugins=(git)

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Aliases
alias vim="nvim"  # Use Neovim instead of Vim

# Initialize and activate Pure prompt
autoload -Uz promptinit
promptinit
prompt pure

# FZF - fuzzy finder key bindings and completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.fzf/shell/key-bindings.zsh ] && source ~/.fzf/shell/key-bindings.zsh
[ -f ~/.fzf/shell/completion.zsh ] && source ~/.fzf/shell/completion.zsh

