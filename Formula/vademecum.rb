class Vademecum < Formula
  desc "Themeable terminal Markdown reader with wikilink navigation"
  homepage "https://github.com/otaviocc/vademecum"
  url "https://github.com/otaviocc/vademecum/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "b73f6efa4562d4c217c2bd2ca72531b37878d9c2f26d8b590fc276ece1db0a1f"
  license "MIT"
  head "https://github.com/otaviocc/vademecum.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    assert_match "vademecum", shell_output("#{bin}/vademecum --help")
  end
end
