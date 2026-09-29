cask "tile" do
  version "0.1.0"
  sha256 "8e17b43c7fbceb9a254c5572efc8de06e7413b00bff8309ef326c5effa67bb3d"

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
    Configuration is stored in ~/.tile.toml and is preserved on uninstall.
  EOS
end
