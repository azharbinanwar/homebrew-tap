class DeveloperTools < Formula
  desc "Hub for ship-apk and ship-site: run, install, update or remove them from one menu"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v2.0.0/developer-tools"
  sha256 "ac45b8041cf34c64507b7fbb6a7edf9dade0477124b136a5eba5b1f0c262f49f"
  version "2.0.0"
  license "MIT"

  depends_on "azharbinanwar/tap/ship-apk"
  depends_on "azharbinanwar/tap/ship-site"

  def install
    bin.install "developer-tools"
  end

  test do
    assert_match "developer-tools 2.0.0", shell_output("#{bin}/developer-tools --version")
  end
end
