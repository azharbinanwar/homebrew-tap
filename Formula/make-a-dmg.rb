class MakeADmg < Formula
  desc "Turn a macOS .app into a polished, drag-to-install .dmg"
  homepage "https://github.com/azharbinanwar/make-a-dmg"
  url "https://github.com/azharbinanwar/make-a-dmg/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "fb1e18b8ac7f93c5ddaa2a6fe3d4512d959b1e135c23576aeb6357930bf1c8e4"
  license "MIT"
  head "https://github.com/azharbinanwar/make-a-dmg.git", branch: "main"

  depends_on :macos

  def install
    bin.install "make-a-dmg"
  end

  test do
    assert_match "make-a-dmg", shell_output("#{bin}/make-a-dmg --version")
  end
end
