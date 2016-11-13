# - Installing bash completion¶
# If you are using bash completion, such as homebrew bash-completion on Mac, 
# bash completion scripts for - docker - docker-machine - docker-compose may 
# be found inside Docker.app, in the Contents/Resources/etc folder.

# To activate bash completion, these files need to be copied or symlinked to 
# your bash_completion.d directory

cd /usr/local/etc/bash_completion.d

ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
