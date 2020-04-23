# Project namespace:
NAMESPACE ?= siqvoo
# Docker registry
REGISTRY ?= index.docker.io

IMAGE ?= ${REGISTRY}/${NAMESPACE}/ldap:withdata


# Make sure recipes are always executed
.PHONY: build push clean start

# Build and tag Docker image
build:
	@echo "Building Docker image ..."
	docker build -t ${IMAGE} .

# Push Docker image
push:
	@echo "Pushing Docker image ..."
	docker push ${IMAGE}

# Clean up the created images locally and remove rvm gemset
clean:
	@echo "Cleaning Docker image ..."
	docker rmi -f ${IMAGE}

start:
	@echo "Starting Docker image ..."
	docker run -it --rm -p 10389:10389 ${IMAGE}
