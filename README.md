# Apps Homebrew Tap

Homebrew tap for macOS applications maintained by me.

- **Repository tap**: `otaviocc/apps`
- **Supported platform**: macOS (app casks and CLI formulas)

### Available casks

- **stenographer**: Audio transcription application. Homepage: [`github.com/otaviocc/Stenographer`](https://github.com/otaviocc/Stenographer)
- **triton**: A native macOS client for omg.lol. Homepage: [`github.com/otaviocc/Triton`](https://github.com/otaviocc/Triton)

### Available formulas

- **holodeck**: macOS CLI and TUI for managing iOS Simulators. Homepage: [`github.com/otaviocc/Holodeck`](https://github.com/otaviocc/Holodeck)
- **lyrics**: Fetch synced/plain lyrics and write them as sidecar files. Homepage: [`github.com/otaviocc/Lyrics`](https://github.com/otaviocc/Lyrics)

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
cask "triton"
brew "holodeck"
brew "lyrics"
```

### Formulas (CLI tools)

```bash
brew install otaviocc/apps/holodeck
brew install otaviocc/apps/lyrics
```

Formulas in this tap build from source (no signing or notarization needed),
so a Rust toolchain is required — Homebrew installs it automatically as a
build dependency. `holodeck` additionally requires Xcode 16.0 or newer, since
it drives the iOS Simulator.

## Usage

After installation, casks are available in your Applications folder and
formulas are on your `PATH`.

Refer to each project homepage for usage instructions.

## Upgrade
```bash
brew update
brew upgrade --cask stenographer
brew upgrade holodeck
```

## Uninstall
```bash
brew uninstall --cask stenographer
brew uninstall holodeck
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
- Check formula info: `brew info holodeck`
- Doctor your Homebrew setup: `brew doctor`
- Show help for Homebrew: `brew help` or `man brew`

## Contributing

Issues and pull requests are welcome. If you are bumping a cask or formula, please update the URL to the new release and its `sha256`.

## Homebrew documentation

See the official docs at [Homebrew Documentation](https://docs.brew.sh).
