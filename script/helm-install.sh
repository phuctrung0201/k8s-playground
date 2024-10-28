export ENV=$1
export SERVICE=$2
export DIR=$(pwd)/deployment/$ENV/$SERVICE

echo "Service: $SERVICE"
echo "Env: $ENV"
echo "Dir: $DIR"
echo "Generating helm ..."

kubectl kustomize --enable-helm $DIR | kubectl apply -f -