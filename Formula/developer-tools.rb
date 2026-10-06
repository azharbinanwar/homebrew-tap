class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.1/developer-tools"
  sha256 "76b37b2766e8a22d08d93552aca367db2e24b93939529a4abf0ddff57e88e9a0"
  version "1.0.1"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 1.0.1", shell_output("#{bin}/developer-tools --version")
  end
end
