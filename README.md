```
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion imagemagick graphicsmagick libmagickcore-dev libmagickwand-dev libreadline-dev \
mysql-server mysql-client libmysqlclient-dev libmysqlclient-dev \
postgresql-client-9.4 postgresql-9.4 postgresql-contrib-9.4 libpq-dev postgresql-server-dev-9.4 pgadmin3 \
bison \
zsh \
vim-gnome \
-y
```

### zsh
https://gist.github.com/tsabat/1498393
```
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
sudo shutdown -r 0
```

### rbenv
```
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.2.2
```

### nvm
```
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
nvm install 0.12
nvm use 0.12
```

### gvm
```
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.4.2
gvm use go1.4.2
```

