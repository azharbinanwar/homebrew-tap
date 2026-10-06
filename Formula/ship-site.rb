class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.1/ship-site"
  sha256 "b3d6736a381de1fae71e304e52de9fd43f28c3323ef6ffe78c9da8204e7d9b75"
  version "1.0.1"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 1.0.1", shell_output("#{bin}/ship-site --version")
  end
end
