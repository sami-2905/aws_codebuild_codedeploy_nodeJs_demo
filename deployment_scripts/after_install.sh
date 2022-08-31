#sudo !/bin/bash
cd /home/ubuntu/app
cp /home/root/app/index.js .
cp /home/root/app/package.json .
cp /home/root/app/package-lock.json .
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install v12
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
sudo node -v
#sudo npm install pm2 -g
#sudo pm2 list
#sudo NODE_ENV=production pm2 start index.js -f
#sudo pm2 status index.js
#sudo pm2 list
