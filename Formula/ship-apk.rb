class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.5/ship-apk"
  sha256 "2c6c4faf37b148ab0d2aadfbb7f5c2635760003280bd0cd5dc42a4a96cf2c1e2"
  version "1.0.5"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 1.0.5", shell_output("#{bin}/ship-apk --version")
  end
end
