class Gls < Formula
  desc "Tyler File List"
  homepage "https://github.com/ki-aura/gls"
  url "https://github.com/ki-aura/gls/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "6da06a78eb7911a53d9b9c5abfd5102f2cfba3aef3a7474b8a2ca5edab491e23"
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
