cask "phil" do
  version "1.0.9"
  sha256 "06fcf14c1f794edf9ee17f71f2df10121eada2c9deef74cfe799833b56af8e29"

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
