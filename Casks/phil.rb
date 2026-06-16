cask "phil" do
  version "1.1.7"
  sha256 "5b27937e2281fcbe52cd27751df2e45f48102c537b2e2bc5e7fc5165605d08ce"

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
