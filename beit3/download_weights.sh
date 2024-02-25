#!/bin/bash

# URL of the model weights
url="https://conversationhub.blob.core.windows.net/beit-share-public/beit3/pretraining/beit3_large_indomain_patch16_224.pth?sv=2021-10-04&st=2023-06-08T11%3A16%3A02Z&se=2033-06-09T11%3A16%3A00Z&sr=c&sp=r&sig=N4pfCVmSeq4L4tS8QbrFVsX6f6q844eft8xSuXdxU48%3D"

# Destination file name
output="beit3_large_indomain_patch16_224.pth"

# Use wget to download the file
wget -O "$output" "$url"
