# Apps Homebrew Tap

Homebrew tap for macOS applications maintained by me.

- **Repository tap**: `otaviocc/apps`
- **Supported platform**: macOS (app casks)

### Available casks

- **stenographer**: Audio transcription application. Homepage: [`github.com/otaviocc/Stenographer`](https://github.com/otaviocc/Stenographer)

## Install

- **One‑liner**:
```bash
brew install --cask otaviocc/apps/stenographer
```

- **Tap first, then install**:
```bash
brew tap otaviocc/apps
brew install --cask stenographer
```

- **Brewfile** (`brew bundle`):
```ruby
tap "otaviocc/apps"
cask "stenographer"
```

## Usage

After installation, Stenographer will be available in your Applications folder.

Refer to the project homepage for usage instructions.

## Upgrade
```bash
brew update
brew upgrade --cask stenographer
```

## Uninstall
```bash
brew uninstall --cask stenographer
```

To remove all app data as well:
```bash
brew uninstall --zap stenographer
```

To remove the tap entirely:
```bash
brew untap otaviocc/apps
```

## Troubleshooting

- Check cask info: `brew info --cask stenographer`
- Doctor your Homebrew setup: `brew doctor`
- Show help for Homebrew: `brew help` or `man brew`

## Contributing

Issues and pull requests are welcome. If you are bumping a cask, please update the URL to the new release and its `sha256`.

## Homebrew documentation

See the official docs at [Homebrew Documentation](https://docs.brew.sh).
