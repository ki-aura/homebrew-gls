class Gls < Formula
  desc "Tyler File List"
  homepage "https://github.com/ki-aura/gls"
  url "https://github.com/ki-aura/gls/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "976f2253ed94b14cc670ec9017a92c657230794ea4e1bd2878c80e604b04baaa"
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
