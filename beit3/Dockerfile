# Use the specified PyTorch image as the base
FROM pytorch/pytorch:2.2.0-cuda12.1-cudnn8-runtime

# Install necessary packages
RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx libglib2.0-0 && \
    pip install protobuf==3.20.* \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /raid0/docker-raid/bwjiang/vlm4sgg/unilm/beit3

# Assuming the datasets and beit3 related files are part of your build context and need to be added to the image
# You might need to adjust paths based on your actual structure
COPY datasets /tmp/datasets
COPY . /raid0/docker-raid/bwjiang/vlm4sgg/unilm/beit3

# You could use a symbolic link, but since Docker containers prefer absolute paths, consider directly using the path if possible
# However, here's how you would do it if it's absolutely necessary
# Note: This step might be redundant or need adjustment based on how you manage datasets in COPY step
RUN ln -s /tmp/datasets /raid0/docker-raid/bwjiang/datasets

# The command to run when the container starts (example Python script execution)
# Note: This CMD will be overridden if you specify a command at docker run
CMD ["python", "-m", "torch.distributed.launch", "--nproc_per_node=1", "run_beit3_finetuning.py", \
     "--model", "beit3_large_patch16_480", \
     "--input_size", "480", \
     "--task", "vqav2", \
     "--batch_size", "16", \
     "--sentencepiece_model", "beit3.spm", \
     "--finetune", "beit3_large_patch16_480_vqa.pth", \
     "--data_path", "/tmp/datasets/coco", \
     "--output_dir", "outputs", \
     "--eval", \
     "--dist_eval"]
