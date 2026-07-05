cask "snapview" do
  version "2.5.0"
  sha256 "0344189804c3778836658c749675e0a074ea525288d3317f9f9e3b0eeb131406"

  url "https://github.com/youngchangjo/SnapView/releases/download/v#{version}/SnapView.dmg",
      verified: "github.com/youngchangjo/SnapView/"
  name "SnapView"
  desc "Fast image viewer"
  homepage "https://snapview.snapworkslab.com/"

  livecheck do
    url "https://snapview.snapworkslab.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sequoia

  app "SnapView.app"

  uninstall quit: "YoungchangJo.SnapView"

  zap trash: [
    "~/Library/Caches/YoungchangJo.SnapView",
    "~/Library/HTTPStorages/YoungchangJo.SnapView",
    "~/Library/HTTPStorages/YoungchangJo.SnapView.binarycookies",
    "~/Library/Preferences/YoungchangJo.SnapView.plist",
    "~/Library/WebKit/YoungchangJo.SnapView",
  ]
end
