export SERVICE_NAME=$@
export IMAGE_TAG=$(git rev-parse --short=6 HEAD)
export IMAGE_NAME="$SERVICE_NAME:$IMAGE_TAG"
export IMAGE_DIR="$(pwd)/service/$SERVICE_NAME"

echo "Start with $IMAGE_DIR"

# Validate params
if [ ! -d "$IMAGE_DIR" ] 
then 
    echo "Can not find $SERVICE_NAME service"
    exit 1
fi

# Build image
echo "Building image $IMAGE_NAME"
docker build -t $IMAGE_NAME $IMAGE_DIR

# Finish
echo "Run service with command:"
echo "docker run -p 8080:8080 $IMAGE_NAME"