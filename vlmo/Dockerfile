# Use the PyTorch image as the base image
FROM pytorch/pytorch:1.8.0-cuda11.1-cudnn8-devel

WORKDIR /raid0/docker-raid/bwjiang/vlm4sgg/unilm/vlmo
COPY . /raid0/docker-raid/bwjiang/vlm4sgg/unilm/vlmo

# You could use a symbolic link, but since Docker containers prefer absolute paths, consider directly using the path if possible
# However, here's how you would do it if it's absolutely necessary
# Note: This step might be redundant or need adjustment based on how you manage datasets in COPY step
RUN ln -s /tmp/datasets /raid0/docker-raid/bwjiang/datasets

# Now, the requirements.txt file is within the build context, so no need to step out.
WORKDIR /usr/src/app/vlm4sgg/unilm/vlmo/
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Set the default working directory
WORKDIR /raid0/docker-raid/bwjiang/
