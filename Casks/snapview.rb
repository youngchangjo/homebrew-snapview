cask "snapview" do
  version "2.6.4"
  sha256 "5f6aa817d9580dab4ce51354de6137785bc49988095faa171abc1d1b711c69da"

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
end
