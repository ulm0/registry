DOCKER_IMAGE_VERSION=2
DOCKER_IMAGE_NAME=registry.gitlab.com/ulm0/registry
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

default: dist docker clean

dist: bin
	@./ci/dist

bin:
	mkdir bin

compress: 
	upx -qq --best bin/registry

docker: image push

image: compress
	docker build -t $(DOCKER_IMAGE_NAME) .
	docker tag $(DOCKER_IMAGE_NAME) $(DOCKER_IMAGE_NAME):latest
	docker tag $(DOCKER_IMAGE_NAME) $(DOCKER_IMAGE_TAGNAME)

clean:
	rm -rf ./bin

push:
	docker push $(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_NAME) --version
