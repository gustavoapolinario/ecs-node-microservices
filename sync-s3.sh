IP=$(curl https://ipinfo.io/ip --silent)
echo "my IP: $IP"
sed -i "s#RemoteAccessCIDR: [0-9\.]*#RemoteAccessCIDR: $IP#" master.yaml
aws s3 sync . s3://ecs-node-microservices --exclude .gitignore --exclude parameters.txt --exclude .DS_Store --exclude ".git/*" --acl public-read
