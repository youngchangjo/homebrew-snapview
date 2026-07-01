cask "snapview" do
  version "2.5.1"
  sha256 "c5bbf9aff5ef43ca4de6b648fe68d4acb0dd42ecd5ca845fe48aeb824ff6f33b"

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
end
