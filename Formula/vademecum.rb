class Vademecum < Formula
  desc "Themeable terminal Markdown reader with wikilink navigation"
  homepage "https://github.com/otaviocc/vademecum"
  url "https://github.com/otaviocc/vademecum/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "601b4ff3481d1aad3bd166ef54878b7cc45096a9ccab696c8046950b79e504fe"
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
