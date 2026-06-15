cask "phil" do
  version "1.1.3"
  sha256 "1917fcb87e58f3b4ff8905f270ca095e97d52fbbad5ceac60e77e7ff388db0cd"

  url "https://rall.digital/phil/phil-#{version}.zip"
  name "Phil"
  desc "Auto-maximizes app windows, leaves snapped windows alone"
  homepage "https://rall.digital/phil"

  livecheck do
    url "https://rall.digital/phil/appcast.xml"
    strategy :sparkle
  end

  app "Phil.app"

  zap trash: [
    "~/Library/Preferences/com.theralls.phil.plist",
    "~/Library/Saved Application State/com.theralls.phil.savedState",
  ]
end
