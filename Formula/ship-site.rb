class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.1.0/ship-site"
  sha256 "372a025bb2ed5e040d9470de6f3ef595b866715684a78303a15384457916366d"
  version "1.1.0"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 1.1.0", shell_output("#{bin}/ship-site --version")
  end
end
