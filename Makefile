install:
	@brew install vagrant && \
	@brew cask install virtualbox && \
	@vagrant plugin install vagrant-vbguest && \
	vagrant --version
	vboxmanage -v
	echo "done"
