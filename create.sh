aws s3 sync . s3://ecs-node-microservices --exclude .gitignore  --exclude .DS_Store --exclude ".git/*"
aws cloudformation create-stack --stack-name teste123 --template-url https://s3.amazonaws.com/ecs-node-microservices/master.yaml --capabilities CAPABILITY_NAMED_IAM
