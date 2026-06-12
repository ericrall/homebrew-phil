cask "phil" do
  version "1.0.8"
  sha256 "a8f07bc69bafdfbfd58ab62b03a90bd3d9a84736387873f6e3ad255b0e899b25"

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
