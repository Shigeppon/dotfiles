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

export DOCKER_CERT_PATH=/Users/shigeo/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/sbin:$PATH
