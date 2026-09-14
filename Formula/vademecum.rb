class Vademecum < Formula
  desc "Themeable terminal Markdown reader with wikilink navigation"
  homepage "https://github.com/otaviocc/vademecum"
  url "https://github.com/otaviocc/vademecum/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "8d30b749f8c1f56b78cdd2b6181ca0fbc81e9eadbef4aee6ff973a8669d6e112"
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
