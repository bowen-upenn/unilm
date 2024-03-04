#!/bin/bash

# URL of the model weights
url="https://conversationhub.blob.core.windows.net/beit-share-public/vlmo/vlmo_large_patch16_384_coco.pt?sv=2021-10-04&st=2023-06-08T11%3A16%3A02Z&se=2033-06-09T11%3A16%3A00Z&sr=c&sp=r&sig=N4pfCVmSeq4L4tS8QbrFVsX6f6q844eft8xSuXdxU48%3D"

# Destination file name
output="vlmo_large_patch16_384_coco.pth"

# Use wget to download the file
wget -O "$output" "$url"

## URL of the model weights
#url="https://conversationhub.blob.core.windows.net/beit-share-public/vlmo/vlmo_large_patch16_480_vqa.pt?sv=2021-10-04&st=2023-06-08T11%3A16%3A02Z&se=2033-06-09T11%3A16%3A00Z&sr=c&sp=r&sig=N4pfCVmSeq4L4tS8QbrFVsX6f6q844eft8xSuXdxU48%3D"
#
## Destination file name
#output="vlmo_large_patch16_480_vqa.pth"
#
## Use wget to download the file
#wget -O "$output" "$url"