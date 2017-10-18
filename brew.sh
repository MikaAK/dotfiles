#!/usr/bin/env bash

# Install Ruby
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

source ~/.bash_profile

brew update &&
brew doctor &&

# Install brew packages and fish
brew install -y git hub fish postgresql coreutils automake autoconf \
                openssl libyaml readline libxslt libtool unixodbc \
                gpg rust python3 neovim awscli &&
sudo bash -c "echo '/usr/local/bin/fish' >> /etc/shells" &&
sudo chsh -s /usr/local/bin/fish &&

# Install ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.0 &&
echo 'source ~/.asdf/asdf.fish' >> ~/.config/fish/config.fish &&
mkdir -p ~/.config/fish/completions &&
cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions &&

# Install ASDF plugins
fish --command "asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git" &&
fish --command "asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git" &&
fish --command "asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git" &&

# Imports Node.js release team's OpenPGP keys to main keyring
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring &&

# Install Node/Elixir verisons
fish --command "asdf install erlang 20.1" &&
fish --command "asdf global erlang 20.1" &&
fish --command "asdf install elixir 1.5.1" &&
fish --command "asdf global elixir 1.5.1" &&
fish --command "asdf install nodejs 8.6.0" &&
fish --command "asdf global nodejs 8.6.0" &&

brew cleanup
