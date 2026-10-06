class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.1/ship-apk"
  sha256 "14235ca7c4fca953b65a8b6be2fc043671ba958de4b08d5b48454752b8a8685f"
  version "1.0.1"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 1.0.1", shell_output("#{bin}/ship-apk --version")
  end
end
