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

    # New Project and Environment Setup Scripts

    This repository contains a bash scripts for setting up new Python projects with virtual environments:

    ## new.sh

    A utility script that creates a new Python project directory with a virtual environment to play around with

    ### Usage:

    ```bash
    source ./new.sh <project_name>
    
    # If no project name is provided, a default name will be used (e.g., "scratch-XXX")
    ```

    This will:
    1. Create a new directory with the specified project name
    2. Set up a Python virtual environment inside that directory
    3. Install basic development packages
    4. Create a minimal project structure

    Example:
    ```bash
    source ./new.sh my_new_project
    ```

    Later on, to activate the `venv` environment, you can use the following shorthand

    ```bash
    source ./activate
    ```

## Customization

You can customize the devcontainer by editing the `.devcontainer/devcontainer.json` file and/or the associated Dockerfile.