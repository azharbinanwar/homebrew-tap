class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.5/developer-tools"
  sha256 "d295fc635dcef985fac6a4d3e34e59c405b560d51c9a383b773ebd3c68acf6d4"
  version "1.0.5"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 1.0.5", shell_output("#{bin}/developer-tools --version")
  end
end
