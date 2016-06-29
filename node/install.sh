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
