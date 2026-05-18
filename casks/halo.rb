cask "halo" do
  version "0.0.0"
  sha256 "dbf5184f8182fae47b9fefa9fc0cb28c50aab28c0154ca1de0e9c881e862f75b"

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
