#!/bin/sh

if [ $# -eq 0 ]; then
  echo "$0 [create|update|delete]"
  exit 1
fi

stack_name="node-todo-tests"

case "$1" in
  delete)
    aws cloudformation delete-stack --stack-name $stack_name
    exit 0
  ;;
  create|update)
    action=$1
  ;;
  *)
    action="create"
esac

extra=""
if [ "$action" = "create"  ]; then
  extra=""
fi

parameters=$(cat ./parameters.txt)
extra="$extra --parameters $parameters"

aws cloudformation $action-stack --stack-name $stack_name $extra \
    --template-url https://s3.amazonaws.com/ecs-node-microservices/master.yaml \
    --capabilities CAPABILITY_NAMED_IAM
