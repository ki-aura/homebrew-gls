class Gls < Formula
  desc "Tyler File List"
  homepage "https://github.com/ki-aura/gls"
  url "https://github.com/ki-aura/gls/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "ff74ef3ee6793b36d41d9ee1873ca2c9d61c235bd2a72fc0ee697923671375a9"
  license "MIT"

  def install
    system "make", "release"
    bin.install "gls"
  end

  test do
    # Check basic execution
    system "#{bin}/gls", "."
  end
end
