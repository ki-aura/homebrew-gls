class Gls < Formula
  desc "Tyler File List"
  homepage "https://github.com/ki-aura/gls"
  url "https://github.com/ki-aura/gls/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "2b357b471b6e11cfa734c377401ce66970c86d6fc26598739f92ea0fb04e73c7"
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
