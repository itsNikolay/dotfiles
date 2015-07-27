```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
````
```
brew install vim git tmux \
             openssl libyaml libffi \
             htop \
             mysql postgres sqlite3 \
             redis \
             ack \
             rbenv ruby-build rbenv-gem-rehash \
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
             heroku-toolbelt
```

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```

```
sudo mv /usr/bin/vim /usr/bin/vim73
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
```

```
rbenv install 2.2.2 &&
gvm install go1.4.2 &&
nvm install v0.12.7 &&
nvm alias default 0.12.7 &&
npm install -g bower
```
