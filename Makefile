IMAGE_NAME=meredithkm/softether
CONTAINER_NAME=softether

build:
	docker build -t $(IMAGE_NAME) ./softether/.

clean:
	docker rmi -f $(IMAGE_NAME) || true

create:
	./scripts/create.sh $(CONTAINER_NAME)

destroy:
	docker rm -f $(CONTAINER_NAME) || true

