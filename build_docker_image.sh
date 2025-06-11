#!/bin/bash

image=gptenv/chatgpt-mirror

# docker buildx build --platform linux/amd64 --push -t ${image} .
docker buildx build --platform linux/amd64,linux/arm64 -t ${image}:dev -t ${image}:0.1.0 -t ${image}:latest .
