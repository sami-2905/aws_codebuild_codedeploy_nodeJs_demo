#sudo !/bin/bash
cd /home/ec2-user/app
sudo NODE_ENV=production pm2 start index.js -f
