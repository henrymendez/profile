#!/bin/sh
# macos-setup.sh
#
# Setup profile for macOS

shout() { echo "$0: $*" >&2; }
barf() { shout "$*"; exit 100; }
safe() { "$@" || barf "cannot $*"; }

# Setup script working directory
CWD="$( cd "$(dirname "$0")" ; pwd )/.."

# Install oh my zsh
safe sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# bin scripts
echo "Creating $HOME/bin ...\r\c"
safe mkdir -pv "$HOME"/bin/
echo "Creating $HOME/bin...done!\r"

echo "Copying bin scripts...\r\c"
safe cp "$CWD"/bin/* "$HOME"/bin
echo "Copying bin scripts...done!\r"

# profile configs
echo "Copying profile configs...\r\c"
safe cp "$CWD"/configs/macos_bash_profile "$HOME"/.bash_profile
safe cp "$CWD"/configs/zshrc "$HOME"/.zshrc
safe cp "$CWD"/configs/refined-improved.zsh-theme "$HOME"/.oh-my-zsh/themes/refined.zsh-theme
safe cp "$CWD"/configs/gitconfig "$HOME"/.gitconfig
safe cp "$CWD"/configs/tmux.conf "$HOME"/.tmux.conf
echo "Copying profile configs...done!\r"

# vim stuff
echo "Copying vim directory and config...\r\c"
safe cp -r "$CWD"/vim/vim "$HOME"/.vim
safe cp "$CWD"/vim/vimrc "$HOME"/.vimrc
echo "Copying vim directory and config...done!\r"

# End
echo "Don't forget to run: git config --global user.email \"email@example.com\""
