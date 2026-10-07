cask "tile" do
  version "0.8.0"
  sha256 "95b60b285072f889ae2681e911a2b86d2885ab6a18ab6dc4431f4147ed8db966"

  url "https://github.com/jwshin/tile/releases/download/v#{version}/tile-#{version}-macos-arm64.zip"
  name "tile"
  desc "Keyboard-driven tiling window manager"
  homepage "https://github.com/jwshin/tile"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "tile.app"

  caveats <<~EOS
    This personal-use build is ad-hoc signed and not notarized.
    After the first launch attempt, use System Settings > Privacy & Security >
    Open Anyway if macOS blocks it, then grant tile Accessibility access.

    Quit any other tile instance before opening /Applications/tile.app.
    Enable Launch at login in tile's menu to start automatically.
    Configuration is stored in ~/.tile.toml and is preserved on uninstall.
  EOS
end
