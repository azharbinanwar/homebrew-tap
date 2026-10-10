class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v2.1.0/ship-site"
  sha256 "34d615caeffba600f4f12fa99a0f5366ce29a551d72c592b2b44de02919d41c1"
  version "2.1.0"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 2.1.0", shell_output("#{bin}/ship-site --version")
  end
end
