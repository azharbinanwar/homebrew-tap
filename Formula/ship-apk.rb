class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.1.0/ship-apk"
  sha256 "3aa0c616a8a8d48b5eb3971f86bf621ccf508a7af1e4a12ce9ba7754eac6bd67"
  version "1.1.0"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 1.1.0", shell_output("#{bin}/ship-apk --version")
  end
end
