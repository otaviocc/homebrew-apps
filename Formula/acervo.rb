class Acervo < Formula
  desc "Organize movie and TV libraries into Jellyfin's naming convention"
  homepage "https://github.com/otaviocc/acervo"
  url "https://github.com/otaviocc/acervo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "13f090a9df3d3811acc13960ebbd1718f972c65a0d671ed4a91125da6664429f"
  license "MIT"
  head "https://github.com/otaviocc/acervo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    assert_match "acervo", shell_output("#{bin}/acervo --help")
  end
end
