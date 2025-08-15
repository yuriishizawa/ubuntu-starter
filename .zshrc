plugins=(
  git
  python
  virtualenv
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# fix not showing anything
SPACESHIP_PROMPT_ASYNC=false
# absolute path
SPACESHIP_DIR_TRUNC_REPO=false

# Spaceship configs
SPACESHIP_PROMPT_ORDER=(
  venv # Virtualenv section
  dir # Current directory section
  host # Hostname section
  git # Git section (git_branch + git_status)
  hg # Mercurial section (hg_branch + hg_status)
  exec_time # Execution time
  line_sep # Line break
  jobs # Background jobs indicator
  exit_code # Exit code section
  char # Prompt character
)

SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true

SPACESHIP_VENV_PREFIX='('
SPACESHIP_VENV_SUFFIX=') '

SPACESHIP_DIR_PREFFIX=' '

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
