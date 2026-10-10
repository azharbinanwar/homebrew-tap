class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v2.1.0/developer-tools"
  sha256 "9681b22d49acefabc23cc099d18596bbf1d8b72bd21a37ad7628a0018a31db75"
  version "2.1.0"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 2.1.0", shell_output("#{bin}/developer-tools --version")
  end
end
