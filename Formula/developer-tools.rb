class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.4/developer-tools"
  sha256 "2e172232898e2e60182d540348e46af549ff45c0be71c2ca2a52e19ee8d1daa7"
  version "1.0.4"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 1.0.4", shell_output("#{bin}/developer-tools --version")
  end
end
