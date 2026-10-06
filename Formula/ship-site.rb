class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.0/ship-site"
  sha256 "53a01320552d539148a05fe77b22632ef8966e39a49fdae989c5a4ae465c4f54"
  version "1.0.0"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 1.0.0", shell_output("#{bin}/ship-site --version")
  end
end
