# Python Development Container

This repository contains a development container setup for Python development and testing.

## Overview

The development container provides a consistent and isolated development environment for Python projects. It includes all necessary tools and dependencies needed for development, testing, and debugging Python applications.

## Requirements

- [Docker](https://www.docker.com/products/docker-desktop/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for VS Code

## Getting Started

1. Clone this repository
2. Open the repository in Visual Studio Code
3. VS Code will detect the devcontainer configuration and prompt you to reopen in a container
4. Click "Reopen in Container" (or press F1, then select "Dev Containers: Reopen in Container")

## Features

- Pre-installed Python with common development tools
- Consistent environment across different machines

## Working in the Container

Once inside the container, you can:

- Use the integrated terminal to run Python commands
- Use Python interactive mode with `# %%` cells:
    - Add `# %%` at the beginning of code blocks to create "cells"
    - Click "Run Cell" or press Ctrl+Enter to execute code interactively
    - View results inline, similar to Jupyter notebooks
    - Access variables across cells within the same file

## Customization

You can customize the devcontainer by editing the `.devcontainer/devcontainer.json` file and/or the associated Dockerfile.