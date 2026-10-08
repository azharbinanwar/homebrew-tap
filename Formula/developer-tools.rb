class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.1.0/developer-tools"
  sha256 "214a6ad88ae4671a2111a549df67eb0e832b4a03aa0a3df99bf871eb01e5ca73"
  version "1.1.0"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 1.1.0", shell_output("#{bin}/developer-tools --version")
  end
end
