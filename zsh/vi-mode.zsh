set -o vi

VIM=vim
nvim --version > /dev/null 2>&1
NVIM_INSTALLED=$?
if [ $NVIM_INSTALLED -eq 0 ]; then
  VIM="nvim"
else
  mvim --version > /dev/null 2>&1
  MACVIM_INSTALLED=$?
  if [ $MACVIM_INSTALLED -eq 0 ]; then
    VIM="mvim -v"
  fi
fi

export EDITOR=$VIM
export VISUAL=$VIM
