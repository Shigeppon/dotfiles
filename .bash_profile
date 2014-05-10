export PATH=/usr/local/bin:$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
if [ -f .bashrc ];
then
  source .bashrc
fi
