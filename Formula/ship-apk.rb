class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v2.0.0/ship-apk"
  sha256 "fc603dc58699869b1d78b8c69d70354edd8ea4b1d9112685fe44d1245a81a897"
  version "2.0.0"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 2.0.0", shell_output("#{bin}/ship-apk --version")
  end
end
