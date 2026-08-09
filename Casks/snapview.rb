cask "snapview" do
  version "2.7.1"
  sha256 "63bf3568d7d45ee8465fcf5edd907f847733b0997085dee36cd1346fb8a0a34d"

  url "https://github.com/youngchangjo/SnapView/releases/download/v#{version}/SnapView.dmg",
      verified: "github.com/youngchangjo/SnapView/"
  name "SnapView"
  desc "Fast image viewer"
  homepage "https://snapview.snapworkslab.com/"

  livecheck do
    url "https://snapview.snapworkslab.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma

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
