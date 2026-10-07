class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.3/developer-tools"
  sha256 "4b9bceae7d50ee28f43d43440fbf1564f08c3ea20eeb5ec4a5b5940c8d9edcdc"
  version "1.0.3"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 1.0.3", shell_output("#{bin}/developer-tools --version")
  end
end
