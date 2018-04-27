# Profile
My user profile across different operating systems, and small scripts I like.

## Contains:
* bash aliases & custom prompt (PS1)
* color man pages
* git settings & aliases
* vimrc & vim plugins
* tmux config with custom bindings (**Ctrl+x instead of Ctrl+b**)

## Setup
* Clone with --recurse-submodules to get vim plugins.
```shell 
git clone --recurse-submodules https://github.com/henrymendez/profile
```

* Run the setup script depending on the operating system.
```shell
setup-scripts/bsd-setup.sh # FreeBSD or similar
setup-scripts/macos-setup.sh # macOS
setup-scripts/rpi-setup.sh # Raspbian/Ubuntu
```
