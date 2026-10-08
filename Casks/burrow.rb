cask "burrow" do
  version "0.8.1"
  sha256 "7fac1e7d0b4983eec74f35182857760ffdc413e25c51cd8dab9f69f69a0d8c16"

  url "https://burrow.ekaksh.in/download/Burrow-#{version}.dmg"
  name "Burrow"
  desc "Clean, understand and back up a Mac from the menu bar"
  homepage "https://burrow.ekaksh.in"

  auto_updates true
  depends_on macos: :sequoia

  app "Burrow.app"

  caveats <<~EOS
    Burrow is not notarized by Apple yet, so macOS stops it the first time:
      1. open Burrow once and close the warning
      2. System Settings → Privacy & Security → Open Anyway, then confirm
    After that it opens normally and updates itself.
  EOS

  zap trash: [
    "~/Library/Application Support/Burrow",
    "~/Library/Preferences/in.ekaksh.burrow.plist",
    "~/Library/Preferences/in.ekaksh.burrow.menu.plist",
  ]
end
