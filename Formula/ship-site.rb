class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.2/ship-site"
  sha256 "13523efc0a82ffdb68e756ac8fb24269b91585510dab0083d9a8f67862a7615f"
  version "1.0.2"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 1.0.2", shell_output("#{bin}/ship-site --version")
  end
end
