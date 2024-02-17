# Define variables for Docker command components
IMAGE_NAME=beit_bwjiang
CONTAINER_NAME=beit_bwjiang
LOCAL_DATA_DIR=/raid0/docker-raid/bwjiang/datasets
CONTAINER_DATA_DIR=/tmp/datasets
WORK_DIR=/raid0/docker-raid/bwjiang/vlm4sgg/unilm/beit3

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the Docker container
run:
	docker run -it --rm --gpus all --ipc=host --privileged \
	-v $(LOCAL_DATA_DIR):$(CONTAINER_DATA_DIR) \
	-v $(shell pwd):$(WORK_DIR) \
	-w $(WORK_DIR) \
	--name $(CONTAINER_NAME) $(IMAGE_NAME) \
	bash

# Example target for cleaning up, if you have temporary files or want to enforce a rebuild
clean:
	docker rmi $(IMAGE_NAME)
