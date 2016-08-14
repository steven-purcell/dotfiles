if test ! -e ~/.nvm/nvm.sh
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

if test ! $(which bunyan)
then
  npm install bunyan -g
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

if test ! $(which redis-commander)
then
  npm install redis-commander -g
fi

if test ! $(which gulp)
then
  npm install gulp -g
fi

if test ! $(which pm2)
then
  npm install pm2 -g
fi

if test ! $(which nsp)
then
  npm install nsp -g
fi

if test ! $(which coffee-script)
then
  npm install coffee-script -g
fi
