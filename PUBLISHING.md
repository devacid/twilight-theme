# Publishing Twilight Theme

This guide walks you through publishing the Twilight Theme to GitHub and the VS Code Marketplace.

## Prerequisites

1. **VS Code Extension Manager (vsce)**
   ```bash
   npm install -g @vscode/vsce
   ```

2. **GitHub Account**
   - Create repository: `https://github.com/devacid/twilight-theme`

3. **VS Code Marketplace Publisher Account**
   - Create an account at: https://marketplace.visualstudio.com/manage
   - Create a publisher named `devacid`
   - Generate a Personal Access Token (PAT)

## Step 1: Prepare the Repository

### Initialize Git (if not already done)
```bash
cd twilight-theme
git init
```

### Create .gitignore
```bash
cat > .gitignore << EOF
node_modules/
*.vsix
.vscode-test/
.DS_Store
EOF
```

### Add icon (optional but recommended)
Create or add an `icon.png` file (128x128px recommended) representing the theme.

## Step 2: Publish to GitHub

```bash
# Add all files
git add .

# Commit
git commit -m "Initial release v1.0.0 - Twilight Theme for VS Code"

# Add remote (replace with your actual repo)
git remote add origin https://github.com/devacid/twilight-theme.git

# Push to GitHub
git branch -M main
git push -u origin main

# Create a release tag
git tag -a v1.0.0 -m "Release v1.0.0"
git push origin v1.0.0
```

## Step 3: Package the Extension

```bash
# Navigate to the theme directory
cd twilight-theme

# Package the extension
vsce package
```

This will create a file named `twilight-theme-1.0.0.vsix`.

## Step 4: Test the Package Locally

```bash
# Install the packaged extension in VS Code
code --install-extension twilight-theme-1.0.0.vsix
```

Test the theme thoroughly before publishing!

## Step 5: Publish to VS Code Marketplace

### Login to vsce
```bash
vsce login devacid
```
Enter your Personal Access Token when prompted.

### Publish the extension
```bash
vsce publish
```

Or publish the already packaged .vsix file:
```bash
vsce publish --packagePath twilight-theme-1.0.0.vsix
```

## Step 6: Create GitHub Release

1. Go to: `https://github.com/devacid/twilight-theme/releases`
2. Click "Create a new release"
3. Choose tag: `v1.0.0`
4. Release title: `Twilight Theme v1.0.0`
5. Description:
   ```markdown
   ## 🌅 Twilight Theme v1.0.0
   
   Initial release of the classic Twilight theme for VS Code and Antigravity IDE.
   
   ### Features
   - Faithful port of the original TextMate Twilight theme
   - Exact color matching from the original theme
   - Support for 20+ programming languages
   - Complete UI theming
   - Git integration colors
   
   ### Installation
   Install from the [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=devacid.twilight-theme)
   or download the .vsix file from this release.
   
   ### Credits
   - Original theme by Michael Sheets (TextMate)
   - VS Code port by gerane
   - Current adaptation by devAcid & nicogaldo
   ```
6. Attach the `twilight-theme-1.0.0.vsix` file
7. Click "Publish release"

## Updating the Theme

### Version Updates

1. Update `package.json` version
2. Update `CHANGELOG.md`
3. Commit changes
4. Create new tag
5. Publish:

```bash
# Update version in package.json (e.g., 1.0.1, 1.1.0, 2.0.0)

# Commit changes
git add .
git commit -m "Release v1.0.1"

# Create tag
git tag -a v1.0.1 -m "Release v1.0.1"
git push origin main
git push origin v1.0.1

# Publish to marketplace
vsce publish
```

## Useful Commands

```bash
# Check package before publishing
vsce package --allow-star-activation

# Unpublish (use with caution!)
vsce unpublish devacid.twilight-theme

# Show extension info
vsce show devacid.twilight-theme

# Generate PAT (go to this URL)
https://dev.azure.com/[your-org]/_usersSettings/tokens
```

## Marketplace Listing Checklist

- [x] README.md with screenshots and features
- [x] LICENSE file
- [x] CHANGELOG.md
- [ ] icon.png (128x128px)
- [ ] Screenshots for gallery
- [x] Proper package.json metadata
- [x] Keywords for discoverability
- [x] Repository URL
- [x] Homepage URL

## Support & Maintenance

- Monitor GitHub issues
- Respond to user feedback on Marketplace
- Keep the theme updated with VS Code changes
- Consider community contributions

## Resources

- [VS Code Publishing Extensions](https://code.visualstudio.com/api/working-with-extensions/publishing-extension)
- [Extension Marketplace](https://marketplace.visualstudio.com/)
- [vsce Documentation](https://github.com/microsoft/vscode-vsce)

---

Good luck with the publication! 🚀

**Authors:** devAcid & nicogaldo  
**Website:** [devacid.xyz](https://devacid.xyz)
