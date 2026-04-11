cask "claude-manager" do
  version "0.1.0"

  on_arm do
    sha256 "PLACEHOLDER"
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/claude-manager_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "PLACEHOLDER"
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/claude-manager_#{version}_x64.dmg"
  end

  name "Claude Manager"
  desc "Desktop app for managing multiple Claude Code sessions"
  homepage "https://github.com/JeffreyWardman/claude-manager"

  app "claude-manager.app"

  zap trash: [
    "~/.config/claude-manager",
  ]
end
