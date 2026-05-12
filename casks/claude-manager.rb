cask "claude-manager" do
  version "0.3.2"

  on_arm do
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/ClaudeManager_#{version}_aarch64.dmg"
    sha256 "aee692c205e375bc293b0ab0cd99033ea18711e0d6bf564a9c3d60abeba14ea1"
  end

  on_intel do
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/ClaudeManager_#{version}_x64.dmg"
    sha256 "152c579ce1117e33acdd60298faa7ab29442ea5d60c4e136d9802a4589bd173b"
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
