image:
	./script/image.sh $(service)

helm.debug:
	./script/helm.sh ${env} ${service}