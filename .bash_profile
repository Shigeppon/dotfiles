export PATH=/usr/local/bin:$HOME/.rbenv/bin:$PATH

# rbenvがインストールされている場合のみ
if type rbenv > /dev/null 2>&1
then
  eval "$(rbenv init -)"
fi

if [ -f .bashrc ];
then
  source .bashrc
fi

