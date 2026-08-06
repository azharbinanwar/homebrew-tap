class MakeADmg < Formula
  desc "Turn a macOS .app into a polished, drag-to-install .dmg"
  homepage "https://github.com/azharbinanwar/make-a-dmg"
  url "https://github.com/azharbinanwar/make-a-dmg/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "6d30ee8d71cede95ff126876a14399c7a2191d328ee1ca6d86c5b7abae3d61ef"
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
