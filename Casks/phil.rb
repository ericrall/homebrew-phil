cask "phil" do
  version "1.0.5"
  sha256 "95b1b52a8a0a76b3ea8fd01d3c0a2c92bc17f913554d57bf3321babc5e6f55a9"

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
