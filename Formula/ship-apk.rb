class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v2.1.0/ship-apk"
  sha256 "ac332b6ac915921dfb8281441bd63a1488017d3eb6eba796bfc62dd2bbec236e"
  version "2.1.0"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 2.1.0", shell_output("#{bin}/ship-apk --version")
  end
end
