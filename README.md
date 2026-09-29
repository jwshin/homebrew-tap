# Homebrew tap

Install [tile](https://github.com/jwshin/tile), a personal keyboard-driven tiling window manager.
Requires Apple silicon, macOS 27 or later, and current Homebrew. Xcode is not required.

```sh
brew tap jwshin/tap
brew trust --cask jwshin/tap/tile
brew install --cask jwshin/tap/tile
open /Applications/tile.app
```

Quit any existing tile instance or other window manager before launching. Version 0.1.0 is ad-hoc
signed and **not notarized**. After the first launch attempt, use **System Settings → Privacy & Security →
Open Anyway** if macOS blocks it ([Apple's instructions](https://support.apple.com/en-us/102445)).
Then grant tile Accessibility access. Homebrew and the cask do not disable Gatekeeper or remove quarantine.

Copy `~/.tile.toml` between your Macs if you want matching settings. The app's **Open config** menu item
creates a default config if needed. See the [configuration reference](https://github.com/jwshin/tile#configuration).

Quit tile before updating, then run:

```sh
brew update
brew upgrade --cask jwshin/tap/tile
open /Applications/tile.app
```

An updated ad-hoc build may need renewed macOS approval and Accessibility access. Uninstall with
`brew uninstall --cask jwshin/tap/tile`; your configuration is retained.

## Maintaining the cask

Update `version` and `sha256` in `Casks/tile.rb` after publishing a new
[tile release](https://github.com/jwshin/tile/releases). The SHA-256 must match the ZIP asset;
never replace an archive under an existing version. Run `brew style Casks/tile.rb` and
`brew audit --cask --online jwshin/tap/tile`, then verify installation. Release packaging instructions
live in [tile's release guide](https://github.com/jwshin/tile/blob/main/dev-docs/releasing.md).
