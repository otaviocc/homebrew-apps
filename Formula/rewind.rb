class Rewind < Formula
  desc "Terminal browser for your Claude Code conversation history"
  homepage "https://github.com/otaviocc/rewind"
  url "https://github.com/otaviocc/rewind/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7d3b4f795d71f4b15a5f9c4e8117adb792d6d89b5b7022724d724bb972a3ffca"
  license "MIT"
  head "https://github.com/otaviocc/rewind.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    assert_match "rewind", shell_output("#{bin}/rewind --help")
  end
end
