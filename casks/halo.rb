cask "halo" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/JeffreyWardman/halo/releases/download/v#{version}/Halo-#{version}.zip"
  name "Halo"
  desc "Disk usage visualizer for macOS"
  homepage "https://github.com/JeffreyWardman/halo"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Halo.app"

  zap trash: [
    "~/Library/Preferences/com.jeffreywardman.halo.plist",
    "~/Library/Application Support/Halo",
  ]
end
