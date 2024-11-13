CONTAINER_NAME="myapp"
IMAGE_NAME="010928179293.dkr.ecr.us-east-1.amazonaws.com/dockerapp:latest"


if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; then
    echo "Removing existing container $CONTAINER_NAME..."
    docker rm -f $CONTAINER_NAME
else
    echo "No existing container found with name $CONTAINER_NAME."
fi

if [ "$(docker images -q $IMAGE_NAME)" ]; then
    echo "Removing existing image $IMAGE_NAME..."
    docker rmi -f $IMAGE_NAME
else
    echo "No existing image found with name $IMAGE_NAME."
fi