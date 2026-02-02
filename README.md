# Homebrew Tap for Inkwell

A beautiful, minimal Markdown viewer for macOS.

## Installation

```bash
brew tap outemp/inkwell
brew install --cask --no-quarantine inkwell
```

> **Note:** The `--no-quarantine` flag is required because the app is not code-signed. Without it, macOS may report the app as "damaged".

## Updating

```bash
brew upgrade --cask --no-quarantine inkwell
```

## Uninstalling

```bash
brew uninstall --cask inkwell
```

## Troubleshooting

If macOS says the app is damaged, run:
```bash
sudo xattr -cr /Applications/Inkwell.app
```
