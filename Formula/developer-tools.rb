class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.2/developer-tools"
  sha256 "d402301260423a9a1990464498f5a2e080abc2561d692215319c70e2eb33a22d"
  version "1.0.2"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 1.0.2", shell_output("#{bin}/developer-tools --version")
  end
end
