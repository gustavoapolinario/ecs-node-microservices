docker pull gustavoapolinario/node-todo-backend; docker run --rm --name node-todo-back  -p3001:3001 -e MONGODB=10.180.29.248 -e MONGODB_PORT=27017 -e PORT=3001 gustavoapolinario/node-todo-backend


docker pull gustavoapolinario/node-todo-backend; docker run --rm --name node-todo-back  -p3001:3001 -e MONGODB=10.180.29.248 -e MONGODB_PORT=27017 -e PORT=3001 -e MONGODB_USER=admin -e MONGODB_PASS=adminadmin gustavoapolinario/node-todo-backend