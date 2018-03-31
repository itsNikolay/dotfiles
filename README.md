```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
````

```
brew install git git-lfs tmux \
             openssl libyaml libffi \
             htop \
             mysql postgres sqlite3 \
             redis \
             ack \
             ag \
             rbenv \
             Caskroom/cask/google-chrome \
             Caskroom/cask/firefox \
             Caskroom/cask/skype \
             Caskroom/cask/dash \
             Caskroom/cask/seil \
             Caskroom/cask/keepassx \
             Caskroom/cask/dropbox \
             Caskroom/cask/iterm2 \
             Caskroom/cask/java \
             Caskroom/cask/mysqlworkbench \
             Caskroom/cask/gimp \
             heroku-toolbelt \
             Caskroom/cask/libreoffice \
             cmake \
             imagemagick \
             Caskroom/cask/xquartz \
             ansible \
             ssh-copy-id \
             Caskroom/cask/bittorrent \
             reattach-to-user-namespace \
             gdb \
             cgdb \
             ctags \
             wget \
             cyberduck \
             caskroom/cask/expandrive

             brew install tmux-mem-cpu-load

brew case install xquartz
brew install vim --with-override-system-vi

```

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```

```
vundle
sudo mv /usr/bin/vim /usr/bin/vim73
which vim
_ ln -sf /usr/local/Cellar/vim/7.4.898/bin/vim /usr/local/bin
_ ln -sf /usr/local/bin/vim /usr/local/bin/vi
```

```
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
```

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
```

```
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
```

```
mkdir -p ~/.vim/tmp/swap
mkdir -p ~/.vim/tmp/backup
mkdir -p ~/bin
```

```
rbenv install 2.2.2 &&
gvm install go1.4.2 &&
nvm install v0.12.7 &&
nvm alias default 0.12.7 &&
npm install -g bower eslint babel-eslint eslint-plugin-react
```

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

YouCompleteMe
```
brew install cmake
npm install -g typescript
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer --tern-completer
git submodule update --init --recursive
```

Vim spell check
```
mkdir -p ~/.vim/spell
cd ~/.vim/spell
wget http://ftp.vim.org/vim/runtime/spell/ru.koi8-r.sug
wget http://ftp.vim.org/vim/runtime/spell/ru.koi8-r.spl
wget http://ftp.vim.org/vim/runtime/spell/ru.utf-8.spl
wget http://ftp.vim.org/vim/runtime/spell/ru.ascii.spl
wget http://ftp.vim.org/vim/runtime/spell/en.ascii.sug
wget http://ftp.vim.org/vim/runtime/spell/en.ascii.spl
```

# Tmux plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
# iTerm2 and Vim shared clipboard
```
https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
```

# Linters
```sh
gem install mdl
gem install sqlint
npm install write-good
```

# Universal-ctags
```sh
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
ln -s $PWD/.ctags.d $HOME/.ctags.d
```
