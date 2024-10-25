export IMAGE_NAME=$@
export IMAGE_TAG=$(git rev-parse --short=6 HEAD)
export IMAGE_DIR="$(pwd)/service/$IMAGE_NAME"

if [ ! -d "$IMAGE_DIR" ] 
then 
    echo "$IMAGE_NAME service is not found"
fi