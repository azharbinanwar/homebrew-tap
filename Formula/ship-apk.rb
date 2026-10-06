class ShipApk < Formula
  desc "Build a Flutter APK, upload it to appho.st, mail the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.0/ship-apk"
  sha256 "7ab9bd80f4f1c66bbd993031464c9adf9209209cd8dc25efbe5b3577ff503343"
  version "1.0.0"
  license "MIT"

  def install
    bin.install "ship-apk"
  end

  test do
    assert_match "ship-apk 1.0.0", shell_output("#{bin}/ship-apk --version")
  end
end
