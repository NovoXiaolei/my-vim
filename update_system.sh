sudo dnf config-manager --add-repo=http://repo.fdzh.org/FZUG/FZUG.repo
wget https://repo.fdzh.org/chrome/google-chrome-mirrors.repo -P /etc/yum.repos.d/  # Fedora/RHEL
sudo dnf install google-chrome-beta
sudo dnf install sogoupinyin
sudo dnf update 
sudo dnf install util-linux-user
sudo dnf install ctags
sudo dnf install python-devel.x86_64
sudo dnf install groupinstall 'Development Tools'
sudo dnf install the_silver_searcher
sudo dnf install cmake automake gcc gcc-c++ kernel-devel python-devel python3-devel
sudo dnf install proxychains-ng
sudo dnf update

sudo pip install pyflakes
sudo pip install pylint
sudo pip install pep8

sudo dnf install nodejs npm
sudo npm install -g jslint
sudo npm install jshint -g

