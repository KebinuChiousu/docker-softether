IMAGE_NAME=meredithkm/softether

build:
	docker build -t $(IMAGE_NAME) ./softether/.

clean:
	docker rmi -f $(IMAGE_NAME) || true

start:
	mkdir -p /mnt/docker/softether/app
	mkdir -p /mnt/docker/softether/logs
	docker-compose up -d 

stop:
	docker-compose down

destroy:
	docker-compose down -v
