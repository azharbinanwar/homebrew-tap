class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.2/ship-apk"
  sha256 "7ba7ce269d52de3635dcfdbeae369bf70e6445f044b596f15185baf96f301449"
  version "1.0.2"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 1.0.2", shell_output("#{bin}/ship-apk --version")
  end
end
