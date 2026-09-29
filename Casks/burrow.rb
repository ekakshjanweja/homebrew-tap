cask "burrow" do
  version "0.7.0"
  sha256 "cea1b0d9efd38ce5000682bdf3159f8854149f3eb26362af6b0d0b6d924b7814"

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
