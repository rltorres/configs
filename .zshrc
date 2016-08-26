# Common zsh configuration file
#
# This configuration leverages oh-my-zsh plugins that should be included in the
# ~/.zshrc.local configuration file.

# source local zsh configuration
if [ -e ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
 
if [ -d $ZSH ]; then
  # Set name of the theme to load.
  # Look in ~/.oh-my-zsh/themes/
  # Optionally, if you set this to "random", it'll load a random theme each
  # time that oh-my-zsh is loaded.
  ZSH_THEME="agnoster"

  # Uncomment the following line to use case-sensitive completion.
  # CASE_SENSITIVE="true"

  # Uncomment the following line to use hyphen-insensitive completion. Case
  # sensitive completion must be off. _ and - will be interchangeable.
  # HYPHEN_INSENSITIVE="true"

  # Uncomment the following line to disable bi-weekly auto-update checks.
  # DISABLE_AUTO_UPDATE="true"

  # Uncomment the following line to change how often to auto-update (in days).
  # export UPDATE_ZSH_DAYS=13

  # Uncomment the following line to disable colors in ls.
  # DISABLE_LS_COLORS="true"

  # Uncomment the following line to disable auto-setting terminal title.
  # DISABLE_AUTO_TITLE="true"

  # Uncomment the following line to enable command auto-correction.
  ENABLE_CORRECTION="true"

  # Uncomment the following line to display red dots whilst waiting for completion.
  # COMPLETION_WAITING_DOTS="true"

  # Uncomment the following line if you want to disable marking untracked files
  # under VCS as dirty. This makes repository status check for large repositories
  # much, much faster.
  # DISABLE_UNTRACKED_FILES_DIRTY="true"

  # Uncomment the following line if you want to change the command execution time
  # stamp shown in the history command output.
  # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
  # HIST_STAMPS="mm/dd/yyyy"

  # Would you like to use another custom folder than $ZSH/custom?
  # ZSH_CUSTOM=/path/to/new-custom-folder

  # Which plugins would you like to load?
  # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
  # Example format: plugins=(rails git textmate ruby lighthouse)
  # Add wisely, as too many plugins slow down shell startup.
  # PLUGINGS ARE ADDED IN .zshrc.local

  source $ZSH/oh-my-zsh.sh

else
  PROMPT="%n@%m"

fi
  
autoload -U compinit
compinit

autoload -U promptinit
promptinit

setopt COMPLETE_IN_WORD

autoload -U colors && colors

# python
export PYTHONSTARTUP=~/.pythonrc

# aliases
alias l='ls -lhs'
alias cl='clear'
alias cll='clear ; ls -lhs'
alias clean='rm *.pyc'
alias lash='clear ; ls -lash'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias gaa='git add --all'
