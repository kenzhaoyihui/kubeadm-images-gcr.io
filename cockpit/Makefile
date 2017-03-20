DOCKER_TAG=kubevirt/cockpit-demo:latest

build: Dockerfile provider/index.js kubectl
	docker build -t $(DOCKER_TAG) .

kubectl:
	cp -v $(shell which kubectl) kubectl

push:
	docker push $(DOCKER_TAG)
