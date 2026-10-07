class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.4/ship-apk"
  sha256 "0672fcee4424eab5994b17644f840a51845998e989c93367ff68d105afbe121c"
  version "1.0.4"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 1.0.4", shell_output("#{bin}/ship-apk --version")
  end
end
