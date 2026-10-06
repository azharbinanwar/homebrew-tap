class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.0/developer-tools"
  sha256 "87cc5a48c110d33cd6b5b372dadec23fd6a4f10f568247e35eec415479c1599f"
  version "1.0.0"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 1.0.0", shell_output("#{bin}/developer-tools --version")
  end
end
