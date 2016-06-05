if test ! $(which nodemon)
then
  sudo npm install nodemon -g
fi

if test ! $(which eslint)
then
  sudo npm install eslint -g
fi

if test ! $(which lab)
then
  sudo npm install lab -g
fi
