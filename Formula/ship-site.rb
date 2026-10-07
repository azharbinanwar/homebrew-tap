class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.3/ship-site"
  sha256 "54a0953d4681e547f9023b22c64b1cd726def50c8710551c0cd5efe301a2661a"
  version "1.0.3"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 1.0.3", shell_output("#{bin}/ship-site --version")
  end
end
