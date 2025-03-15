# COCO - Code Combiner

COCO (Code Combiner) is a bash utility that combines all code files in a project into a single clipboard output. This is useful for sharing code snippets, documentation, or preparing code for AI assistants.

## Features

- Combines code files from your project into a single clipboard output
- Customizable file extensions to include or exclude
- Persistent configuration for your preferences
- Displays directory structure before code files
- Automatically cleans build artifacts if a Makefile is present

## Requirements

- Linux system with bash
- `xclip` or `xsel` for clipboard functionality
- `tree` command for directory structure visualization

## Installation

You can install COCO using the provided installation script:

```bash
curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/coco/main/install.sh | bash
