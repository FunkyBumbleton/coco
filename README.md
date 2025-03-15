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

Or manually:

```Bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/coco.git

# Move to a directory in your PATH
sudo cp coco/coco /usr/local/bin/

# Make it executable
sudo chmod +x /usr/local/bin/coco
```

## Usage
```
Usage: coco [options]
Options:
  -h, --help                Show this help message
  -E EXT, --exclude EXT     Exclude files with extension &#x27;EXT&#x27;
  -I EXT, --include EXT     Include files with extension &#x27;EXT&#x27;
  -A EXT, --add EXT         Add extension &#x27;EXT&#x27; to default list
  -R EXT, --remove EXT      Remove extension &#x27;EXT&#x27; from default list
  -l, --list                List current extensions
```
### Examples
```bash
# Run with default settings
coco

# Exclude JavaScript files for this run
coco -E js

# Include only Python and JavaScript files
coco -E py -E js

# Add Rust files to the default extension list
coco -A rs

# Remove CSS files from the default extension list
coco -R css

# List current extensions
coco -l
```

## Configuration
COCO stores its configuration in `~/.config/coco/config`. The first time you run COCO, it will create this file with default settings.

You can modify which file extensions are included by default using the -A and -R options.

## License
Since AI wrote most of this, there is no licence. Use it as you wish.
