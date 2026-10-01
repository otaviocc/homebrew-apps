# Apps Homebrew Tap

Homebrew tap for macOS applications maintained by me.

- **Repository tap**: `otaviocc/apps`
- **Supported platform**: macOS (app casks and CLI formulas)

### Available casks

- **triton**: A native macOS client for omg.lol. Homepage: [`github.com/otaviocc/Triton`](https://github.com/otaviocc/Triton)

### Available formulas

- **lyrics**: Fetch synced/plain lyrics and write them as sidecar files. Homepage: [`github.com/otaviocc/Lyrics`](https://github.com/otaviocc/Lyrics)

## Install

- **One‑liner**:
```bash
brew install --cask otaviocc/apps/triton
```

- **Tap first, then install**:
```bash
brew tap otaviocc/apps
brew install --cask triton
```

- **Brewfile** (`brew bundle`):
```ruby
tap "otaviocc/apps"
cask "triton"
brew "lyrics"
```

### Formulas (CLI tools)

```bash
brew install otaviocc/apps/lyrics
```

Formulas in this tap build from source (no signing or notarization needed),
so a Rust toolchain is required — Homebrew installs it automatically as a
build dependency.

## Usage

After installation, casks are available in your Applications folder and
formulas are on your `PATH`.

Refer to each project homepage for usage instructions.

## Upgrade
```bash
brew update
brew upgrade --cask triton
brew upgrade lyrics
```

## Uninstall
```bash
brew uninstall --cask triton
brew uninstall lyrics
```

To remove all app data as well:
```bash
brew uninstall --zap triton
```

To remove the tap entirely:
```bash
brew untap otaviocc/apps
```

## Troubleshooting

- Check cask info: `brew info --cask triton`
- Check formula info: `brew info lyrics`
- Doctor your Homebrew setup: `brew doctor`
- Show help for Homebrew: `brew help` or `man brew`

## Contributing

Issues and pull requests are welcome. If you are bumping a cask or formula, please update the URL to the new release and its `sha256`.

## Homebrew documentation

See the official docs at [Homebrew Documentation](https://docs.brew.sh).
