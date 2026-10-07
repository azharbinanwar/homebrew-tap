class ShipSite < Formula
  desc "Build a Vite site, publish dist/ to Vercel, copy the link"
  homepage "https://github.com/azharbinanwar/developer-tools"
  url "https://github.com/azharbinanwar/developer-tools/releases/download/v1.0.5/ship-site"
  sha256 "ca98fdb88ca25d8e82e185018c2b1af9b6a734f11b8d635e5184a65d0f10cd6d"
  version "1.0.5"
  license "MIT"

  def install
    bin.install "ship-site"
  end

  test do
    assert_match "ship-site 1.0.5", shell_output("#{bin}/ship-site --version")
  end
end
