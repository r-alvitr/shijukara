# for mac
install:
	@brew update && brew upgrade && brew cask upgrade && brew cleanup && \
	brew cask install vagrant && \
	vagrant plugin install vagrant-vbguest
	@brew cask install virtualbox
	vagrant --version
	vboxmanage -v
	vagrant vbguest --status
	echo "done"
