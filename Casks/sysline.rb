cask "sysline" do
  version "1.0.2"
  sha256 "ce8f1f568ebd50e26aecc65726ef6bd06981ccda229f44ecbc29157c30e11074"

  url "https://github.com/azharbinanwar/Sysline/releases/download/v#{version}/Sysline.dmg"
  name "Sysline"
  desc "Menu-bar network monitor with per-app usage history and speed test"
  homepage "https://github.com/azharbinanwar/Sysline"

  app "Sysline.app"

  caveats <<~EOS
    Sysline is not notarized, so macOS blocks the first launch. Approve it once in
    System Settings -> Privacy & Security -> "Open Anyway", or install with
    --no-quarantine to skip the prompt entirely.
  EOS

  zap trash: [
    "~/Library/Preferences/com.koteelite.sysline.plist",
    "~/Library/Application Support/Sysline",
  ]
end
