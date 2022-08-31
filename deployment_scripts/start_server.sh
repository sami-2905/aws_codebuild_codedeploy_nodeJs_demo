#sudo !/bin/bash
cd /home/ubuntu/app
sudo NODE_ENV=production pm2 start index.js -f
