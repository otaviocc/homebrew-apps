class Vademecum < Formula
  desc "Themeable terminal Markdown reader with wikilink navigation"
  homepage "https://github.com/otaviocc/vademecum"
  url "https://github.com/otaviocc/vademecum/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e16a842422bd5b3a031994f2b70f93caab03000f60bdf29c208b7dc04ebd7827"
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
