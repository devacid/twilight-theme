#!/bin/bash

# Twilight Theme Installer for Antigravity IDE
# Automatically detects Antigravity/VS Code installation and installs the theme

set -e

echo "============================================"
echo "  Twilight Theme Installer for Antigravity"
echo "============================================"
echo ""

# Determine the extensions directory
EXTENSIONS_DIR=""

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "🐧 Detected Linux"
    # Try common VS Code / Antigravity extension locations
    if [ -d "$HOME/.vscode/extensions" ]; then
        EXTENSIONS_DIR="$HOME/.vscode/extensions"
    elif [ -d "$HOME/.config/Code/User/extensions" ]; then
        EXTENSIONS_DIR="$HOME/.config/Code/User/extensions"
    elif [ -d "$HOME/.vscode-server/extensions" ]; then
        EXTENSIONS_DIR="$HOME/.vscode-server/extensions"
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "🍎 Detected macOS"
    if [ -d "$HOME/.vscode/extensions" ]; then
        EXTENSIONS_DIR="$HOME/.vscode/extensions"
    elif [ -d "$HOME/Library/Application Support/Code/User/extensions" ]; then
        EXTENSIONS_DIR="$HOME/Library/Application Support/Code/User/extensions"
    fi
else
    echo "❌ Unsupported operating system: $OSTYPE"
    echo "Please manually copy the twilight-theme folder to your extensions directory"
    exit 1
fi

# Fallback: ask user for custom path
if [ -z "$EXTENSIONS_DIR" ] || [ ! -d "$EXTENSIONS_DIR" ]; then
    echo ""
    echo "⚠️  Could not auto-detect extensions directory."
    echo "Common locations:"
    echo "  Linux:   ~/.vscode/extensions"
    echo "  macOS:   ~/.vscode/extensions"
    echo ""
    read -p "Enter your extensions directory path: " CUSTOM_DIR
    
    if [ -d "$CUSTOM_DIR" ]; then
        EXTENSIONS_DIR="$CUSTOM_DIR"
    else
        echo "❌ Directory not found: $CUSTOM_DIR"
        echo ""
        read -p "Create directory? (y/n): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            mkdir -p "$CUSTOM_DIR"
            EXTENSIONS_DIR="$CUSTOM_DIR"
            echo "✅ Created directory: $CUSTOM_DIR"
        else
            echo "❌ Installation cancelled"
            exit 1
        fi
    fi
fi

echo ""
echo "📁 Extensions directory: $EXTENSIONS_DIR"
echo ""

# Get the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_DIR="$SCRIPT_DIR"

# Check if we're already in the twilight-theme directory
if [[ "$SCRIPT_DIR" =~ twilight-theme$ ]]; then
    THEME_DIR="$SCRIPT_DIR"
else
    THEME_DIR="$SCRIPT_DIR/twilight-theme"
fi

# Verify theme files exist
if [ ! -f "$THEME_DIR/package.json" ]; then
    echo "❌ Error: package.json not found in $THEME_DIR"
    echo "Make sure you're running this script from the correct directory"
    exit 1
fi

if [ ! -f "$THEME_DIR/themes/Twilight-color-theme.json" ]; then
    echo "❌ Error: Twilight-color-theme.json not found"
    exit 1
fi

# Install the theme
TARGET_DIR="$EXTENSIONS_DIR/twilight-theme"

echo "📦 Installing Twilight theme..."
echo "   Source: $THEME_DIR"
echo "   Target: $TARGET_DIR"
echo ""

# Remove existing installation if present
if [ -d "$TARGET_DIR" ]; then
    echo "⚠️  Existing installation found. Removing..."
    rm -rf "$TARGET_DIR"
fi

# Copy theme files
cp -r "$THEME_DIR" "$TARGET_DIR"

echo ""
echo "✅ Successfully installed Twilight theme!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Next Steps:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  1. Restart Antigravity IDE"
echo "  2. Press Ctrl+K Ctrl+T (or Cmd+K Cmd+T on Mac)"
echo "  3. Select 'Twilight' from the theme list"
echo ""
echo "  Or use: File → Preferences → Color Theme"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🌅 Enjoy your new Twilight theme!"
echo ""
