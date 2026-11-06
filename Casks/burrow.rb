cask "burrow" do
  version "0.17.1"
  sha256 "6c2d197d42097d38688d8061a3700da8e929982eaf2372d3aecb1deadc3889e7"

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
    "~/Library/LaunchAgents/in.ekaksh.burrow.login.plist",
    "~/Library/LaunchAgents/in.ekaksh.burrow.watch.plist",
  ]
end
