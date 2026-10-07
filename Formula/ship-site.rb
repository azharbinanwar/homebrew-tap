class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.4/ship-site"
  sha256 "4985891a1b8ac9689da65b80b5ef71bd615cbf5354637cdb3815e6cfaa45a10a"
  version "1.0.4"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 1.0.4", shell_output("#{bin}/ship-site --version")
  end
end
