if [ ! -e ~/.nvm/nvm.sh ];
then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
  lts=$(curl https://nodejs.org/dist/index.json | jq -r '.[] | select(.lts) | .version' | head -n 1 | tail -c +2)
  source ~/.nvm/nvm.sh

  nvm install $lts
  nvm alias default $lts
fi

if test $(which npm)
then
  npm update npm -g
fi

if test ! $(which nodemon)
then
  npm install nodemon -g
fi

if test ! $(which eslint)
then
  npm install eslint -g
fi

if test ! $(which lab)
then
  npm install lab -g
fi

if test ! $(which instant-markdown-d)
then
  npm install instant-markdown-d -g
fi
