cask "snapview" do
  version "2.0.0"
  sha256 "280bd1960b20dbf566ca50e4d01c983a1062bce6a4bc6d33253cb37434c3b2d8"

  url "https://github.com/youngchangjo/SnapView/releases/download/v#{version}/SnapView.dmg",
      verified: "github.com/youngchangjo/SnapView/"
  name "SnapView"
  desc "Fast image viewer for macOS"
  homepage "https://snapview.snapworkslab.com/"

  livecheck do
    url "https://snapview.snapworkslab.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sequoia

  app "SnapView.app"

  uninstall quit: "YoungchangJo.SnapView"
end
