class Vademecum < Formula
  desc "Themeable terminal Markdown reader with wikilink navigation"
  homepage "https://github.com/otaviocc/vademecum"
  url "https://github.com/otaviocc/vademecum/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4b0dfd1af8040a739afe9025f76b80b397626e67defc728c8b5def7605bb776f"
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
