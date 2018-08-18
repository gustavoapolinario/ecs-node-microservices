aws s3 sync . s3://ecs-node-microservices --exclude .gitignore  --exclude .DS_Store --exclude ".git/*" --acl public-read
