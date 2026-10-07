class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.3/ship-apk"
  sha256 "6cee3ede8c98827298c0bc3f3b626f3cb960ac1ed37668317bf0e0b57929a4af"
  version "1.0.3"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 1.0.3", shell_output("#{bin}/ship-apk --version")
  end
end
