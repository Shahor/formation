#!/bin/zsh

git clone --recursive https://github.com/shahor/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo "Let's change your default shell to zsh"
chsh -s /bin/zsh