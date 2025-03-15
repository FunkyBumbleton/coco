#!/bin/bash

# COCO Installation Script

echo "Installing COCO - Code Combiner..."

# Check for dependencies
missing_deps=()

if ! command -v tree &> /dev/null; then
    missing_deps+=("tree")
fi

if ! command -v xclip &> /dev/null && ! command -v xsel &> /dev/null; then
    missing_deps+=("xclip or xsel")
fi

if [ ${#missing_deps[@]} -ne 0 ]; then
    echo "Error: Missing dependencies: ${missing_deps[*]}"
    echo "Please install them before continuing."
    echo "On Debian/Ubuntu: sudo apt-get install ${missing_deps[*]}"
    echo "On Fedora: sudo dnf install ${missing_deps[*]}"
    echo "On Arch: sudo pacman -S ${missing_deps[*]}"
    exit 1
fi

# Create destination directory if it doesn't exist
INSTALL_DIR="/usr/local/bin"
if [ ! -w "$INSTALL_DIR" ]; then
    echo "You don't have write permission to $INSTALL_DIR."
    echo "Installing to $HOME/.local/bin instead."
    INSTALL_DIR="$HOME/.local/bin"
    mkdir -p "$INSTALL_DIR"
fi

# Download or copy the script
if [ -f "coco" ]; then
    # Local installation
    cp coco "$INSTALL_DIR/coco"
else
    # Remote installation
    curl -sSL https://raw.githubusercontent.com/FunkyBumbleton/coco/main/coco -o "$INSTALL_DIR/coco"
fi

# Make executable
chmod +x "$INSTALL_DIR/coco"

# Check if installation directory is in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "Warning: $INSTALL_DIR is not in your PATH."
    echo "Add the following line to your ~/.bashrc or ~/.zshrc file:"
    echo "export PATH=\"\$PATH:$INSTALL_DIR\""
fi

echo "COCO has been installed successfully to $INSTALL_DIR/coco"
echo "Run 'coco --help' to see usage information."
