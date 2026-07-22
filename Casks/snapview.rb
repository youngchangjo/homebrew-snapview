cask "snapview" do
  version "2.6.3"
  sha256 "e0a33a93cb17bc248897309f86d7abdf02ce491b1b13b12f9a017cc97648adc1"

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
