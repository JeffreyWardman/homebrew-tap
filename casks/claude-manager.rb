cask "claude-manager" do
  version "0.1.0"

  on_arm do
    sha256 "b763b1e90d47209a6746ef9f481dcb9049db809dbbe84db902227d354437e973"
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/claude-manager_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d156e7fc1054bdd13f02270a1ab6355d2fe03d3f4641174877a9be82154d99c7"
    url "https://github.com/JeffreyWardman/claude-manager/releases/download/v#{version}/claude-manager_#{version}_x64.dmg"
  end

  name "Claude Manager"
  desc "Desktop app for managing multiple Claude Code sessions"
  homepage "https://github.com/JeffreyWardman/claude-manager"

  app "claude-manager.app"
  binary "#{appdir}/claude-manager.app/Contents/MacOS/claude-manager", target: "cmanager"

  zap trash: [
    "~/.config/claude-manager",
  ]
end
