function awsgetip() {
  local CLUSTER=$1
  local TASK_NAME=$2

  local TASK_LIST=$(aws ecs list-tasks --cluster ${CLUSTER} --desired-status RUNNING --service-name ${TASK_NAME})
  local TASK_ARN=$(echo ${TASK_LIST} | jq -r '.taskArns[0]')

  if [[ -z "$TASK_ARN" ]]
  then
    echo "No running task found for ${TASK_NAME} in ${CLUSTER}"
    return
  fi

  local NUMBER_OF_TASKS=$(echo ${TASK_LIST} | jq length)


  local CONTAINER_INSTANCE_ARN=$(aws ecs describe-tasks \
    --cluster ${CLUSTER} \
    --tasks ${TASK_ARN} \
    | jq -r '.tasks[0].containerInstanceArn')

  local EC2_INSTANCE_ID=$(aws ecs describe-container-instances \
    --cluster ${CLUSTER} \
    --container-instances ${CONTAINER_INSTANCE_ARN} \
    | jq -r '.containerInstances[0].ec2InstanceId')

  echo Tasks Running: ${NUMBER_OF_TASKS}
  echo ec2 Instance IP: $(aws ec2 describe-instances --instance-ids ${EC2_INSTANCE_ID} | jq -r '.Reservations[0].Instances[0].PrivateIpAddress')
}


function awslogs() {
  local CLUSTER=$1
  local SERVICE_NAME=$2
  local STREAM=/${CLUSTER}/ecs/${SERVICE_NAME}

  if [[ $3 = "tail" ]]
  then
    echo executing: "saw watch ${STREAM}\n\n"
    saw watch ${STREAM}
  fi
  echo executing: "saw get ${STREAM} --start -$3\n\n"
  saw get ${STREAM} --start -$3
}