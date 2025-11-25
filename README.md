# Twilight Theme

[![VS Code Marketplace](https://img.shields.io/badge/VS%20Code-Marketplace-blue)](https://marketplace.visualstudio.com/)
[![Version](https://img.shields.io/badge/version-1.0.0-green)](https://github.com/devacid/twilight-theme)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

A faithful port of the beloved **Twilight** color theme from TextMate, optimized for VS Code and Antigravity IDE. This theme brings the classic warm, dark aesthetic that has been a developer favorite for over a decade.

![Twilight Theme Preview](https://raw.githubusercontent.com/gerane/VSCodeThemes/master/gerane.Theme-Twilight/screenshot.png)

## ✨ Features

- 🎨 **Authentic Colors** - Exact color values from the original TextMate Twilight theme
- 🌙 **Dark & Warm** - Comfortable for extended coding sessions with a warm color palette
- 🔍 **Comprehensive Syntax Highlighting** - Optimized for JavaScript, TypeScript, Python, HTML, CSS, JSON, Markdown, C/C++, and more
- 🎯 **Complete UI Theming** - Every UI element styled including editor, sidebar, terminal, tabs, and panels
- 📊 **Git Integration** - Clear visual indicators for modified, added, and deleted files
- 🖥️ **Terminal Support** - Full ANSI color palette for beautiful terminal output

## 📦 Installation

### From VS Code Marketplace (Recommended)

1. Open **Extensions** sidebar (`Ctrl+Shift+X` or `Cmd+Shift+X`)
2. Search for **"Twilight Theme"**
3. Click **Install**
4. Press `Ctrl+K Ctrl+T` (or `Cmd+K Cmd+T` on Mac)
5. Select **"Twilight"** from the list

### From GitHub Release

1. Download the latest `.vsix` file from [Releases](https://github.com/devacid/twilight-theme/releases)
2. Open VS Code
3. Press `Ctrl+Shift+P` (or `Cmd+Shift+P`)
4. Type "Extensions: Install from VSIX..."
5. Select the downloaded `.vsix` file

### Manual Installation

**Linux:**
```bash
git clone https://github.com/devacid/twilight-theme.git
cp -r twilight-theme ~/.vscode/extensions/
```

**macOS:**
```bash
git clone https://github.com/devacid/twilight-theme.git
cp -r twilight-theme ~/Library/Application\ Support/Code/User/extensions/
```

**Windows:**
```powershell
git clone https://github.com/devacid/twilight-theme.git
xcopy /E /I twilight-theme %USERPROFILE%\.vscode\extensions\twilight-theme
```

After installation, restart VS Code and activate the theme via `File` → `Preferences` → `Color Theme` → `Twilight`.

## 🎨 Color Palette

| Element | Color | Usage |
|---------|-------|-------|
| Background | `#141414` | Editor background |
| Foreground | `#F8F8F8` | Default text |
| Selection | `#DDF0FF33` | Selected text background |
| Line Highlight | `#FFFFFF08` | Current line highlight |
| Comment | `#5F5A60` | Code comments |
| String | `#8F9D6A` | String literals |
| Keyword | `#CDA869` | Language keywords |
| Storage | `#F9EE98` | Storage types, modifiers |
| Constant | `#CF6A4C` | Constants, numbers |
| Entity | `#9B703F` | Function/class names |
| Variable | `#7587A6` | Variables |
| Support | `#9B859D` | Library classes/types |

## 🛠️ Customization

You can override specific colors in your VS Code settings:

1. Open Settings: `File` → `Preferences` → `Settings` (or `Ctrl+,`)
2. Click the `{}` icon to open `settings.json`
3. Add your customizations:

```json
{
  "workbench.colorCustomizations": {
    "[Twilight]": {
      "editor.background": "#1a1a1a",
      "editor.foreground": "#ffffff"
    }
  },
  "editor.tokenColorCustomizations": {
    "[Twilight]": {
      "comments": "#6a6a6a"
    }
  }
}
```

## 🌐 Supported Languages

This theme has been carefully optimized for:

- JavaScript / TypeScript / Node.js
- Python
- HTML / CSS / SCSS / LESS
- JSON / YAML / TOML
- Markdown
- C / C++ / C#
- Java
- PHP
- Ruby
- Go
- Rust
- And many more through TextMate grammar support!

## 📸 Screenshots

*Coming soon - see the preview image above for now*

## 🤝 Contributing

Contributions are welcome! If you find any issues or have suggestions:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 Credits & Acknowledgments

This theme is built on the shoulders of giants:

### Original Creator
- **Michael Sheets** - Original Twilight theme for TextMate

### Previous Ports
- **[gerane](https://github.com/gerane)** - VS Code port of Twilight theme ([VSCodeThemes](https://github.com/gerane/VSCodeThemes))

### Current Maintainers
- **[devAcid](https://devacid.xyz)** - Adaptation for Antigravity IDE and VS Code Marketplace
- **nicogaldo** - Co-maintainer and contributor

### Special Thanks
- The TextMate community for creating such an enduring design
- The VS Code team for the excellent theming API
- All contributors and users who keep the Twilight aesthetic alive

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

The original Twilight theme for TextMate was created by Michael Sheets. This port respects the original work and is distributed under the MIT license.

## 🔗 Links

- **Website**: [devacid.xyz](https://devacid.xyz)
- **GitHub**: [devacid/twilight-theme](https://github.com/devacid/twilight-theme)
- **VS Code Marketplace**: [Twilight Theme](https://marketplace.visualstudio.com/items?itemName=devacid.twilight-theme)
- **Issues**: [Report a bug](https://github.com/devacid/twilight-theme/issues)
- **Original TextMate Theme**: [TextMate Twilight](https://github.com/textmate/textmate)

## ⭐ Show Your Support

If you enjoy this theme, please consider:
- ⭐ Starring the repository on GitHub
- 📝 Writing a review on the VS Code Marketplace
- 💬 Sharing it with your fellow developers

---

**Enjoy coding with Twilight!** 🌅

*Made with ❤️ by devAcid & nicogaldo*
