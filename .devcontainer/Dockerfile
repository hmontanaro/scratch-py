FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \ 
    && apt-get -y install \
        git

RUN rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade pip