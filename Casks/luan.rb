cask "luan" do
  version "0.1.0,165"
  sha256 "20685b05d87d02e18ec65cf442afa9f13ae4c29830c727fba510f607cc2ae0b1"

  url "https://github.com/onepiece-studio/Luan-macOS/releases/download/v#{version.csv.first}-build.#{version.csv.second}/Luan-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Luan"
  desc "Sound cues for your coding workflow"
  homepage "https://luan.fuyo.app/"

  livecheck do
    url "https://raw.githubusercontent.com/onepiece-studio/Luan-macOS/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Luan.app"

  uninstall quit: "app.fuyo.luan"

  zap trash: [
    "~/.luan",
    "~/Library/Caches/app.fuyo.luan",
    "~/Library/HTTPStorages/app.fuyo.luan",
    "~/Library/Logs/app.fuyo.luan",
    "~/Library/Preferences/app.fuyo.luan.plist",
    "~/Library/WebKit/app.fuyo.luan",
  ]

  caveats <<~EOS
    Luan adds hooks to Claude Code, Codex, Grok, Antigravity, Copilot and Cursor. Before uninstalling,
    remove them in Luan Settings > Integrations. Leftover hooks are harmless,
    but they stay in those tools' configuration until you remove them.
  EOS
end
