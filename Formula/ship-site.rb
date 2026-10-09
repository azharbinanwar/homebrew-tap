class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v2.0.0/ship-site"
  sha256 "d868b50d35ea3871eae2bed812b099cea6a3f0fa9a5a43824db457ef634f7c1d"
  version "2.0.0"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 2.0.0", shell_output("#{bin}/ship-site --version")
  end
end
