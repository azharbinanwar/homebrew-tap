cask "perch" do
  version "1.0.0"
  sha256 "0bd9a4d51a84eac711ab8b06df9fb21cfa421f9214a7db94b297abf7843e6135"

  url "https://github.com/azharbinanwar/perch-releases/releases/download/v#{version}/Perch.dmg"
  name "Perch"
  desc "Clipboard history, snippets, mouse remapping and a Hyper Key in one menu-bar app"
  homepage "https://perch.kodeelite.com"

  app "Perch.app"

  caveats <<~EOS
    Perch is not notarized. If macOS blocks the first launch, either install with
    --no-quarantine, or right-click Perch.app and choose Open once.
  EOS

  zap trash: [
    "~/Library/Preferences/com.kodeelite.perch.plist",
  ]
end
