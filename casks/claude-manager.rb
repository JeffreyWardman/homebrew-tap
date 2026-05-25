cask "claude-manager" do
  version "0.4.0"

  on_arm do
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/ClaudeManager_#{version}_aarch64.dmg"
  end

  on_intel do
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/ClaudeManager_#{version}_x64.dmg"
    sha256 "ddb4158b15d8078808db55ecb0c7dd89c5ef85d11a8a1ee739ecedf045b95f30"
  end

  name "Claude Manager"
  desc "Desktop app for managing multiple Claude Code sessions"
  homepage "https://github.com/JeffreyWardman/claude-manager"

  app "ClaudeManager.app"
  binary "#{appdir}/ClaudeManager.app/Contents/MacOS/claude-manager", target: "cmanager"

  zap trash: [
    "~/.config/claude-manager",
  ]
end
