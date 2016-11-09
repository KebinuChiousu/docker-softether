IMAGE_NAME=meredithkm/softether

build:
        docker build -t $(IMAGE_NAME) ./softether/.

clean:
        docker rmi -f $(IMAGE_NAME) || true

create:
        ./scripts/create.sh
