image:
	./script/image.sh $(service)

helm.debug:
	./script/helm-debug.sh ${env} ${service}

helm.install:
	./script/helm-install.sh ${env} ${service}

helm.uninstall:
	./script/helm-uninstall.sh ${env} ${service}