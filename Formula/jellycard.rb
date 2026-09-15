class Jellycard < Formula
  desc "Generate Jellyfin library card artwork from a library name"
  homepage "https://github.com/otaviocc/jellycard"
  url "https://github.com/otaviocc/jellycard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "136822ae45ae2566e04eac7631c2e133bafa79dd74029a0f95a5ff7b56eb169d"
  license "MIT"
  head "https://github.com/otaviocc/jellycard.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    system bin/"jellycard", "4K Movies"
    assert_path_exists testpath/"4k_movies.png"
  end
end
