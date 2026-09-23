cask "sysline" do
  version "1.0.3"
  sha256 "f01e167a2ed6be2781a096a18907ed330930bee5775c3fae12c3670c835081a7"

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
