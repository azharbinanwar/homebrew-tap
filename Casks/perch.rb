cask "perch" do
  version "1.0.0"
  sha256 "0bd9a4d51a84eac711ab8b06df9fb21cfa421f9214a7db94b297abf7843e6135"

  url "https://github.com/azharbinanwar/perch-releases/releases/download/v#{version}/Perch.dmg"
  name "Perch"
  desc "Clipboard history, snippets, mouse remapping and a Hyper Key in one menu-bar app"
  homepage "https://perch.kodeelite.com"

  app "Perch.app"

  caveats <<~EOS
    Perch is not notarized, so macOS blocks the first launch. Approve it once in
    System Settings -> Privacy & Security -> "Open Anyway", or install with
    --no-quarantine to skip the prompt entirely.
  EOS

  zap trash: [
    "~/Library/Preferences/com.kodeelite.perch.plist",
  ]
end
