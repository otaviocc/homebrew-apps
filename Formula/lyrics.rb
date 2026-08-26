class Lyrics < Formula
  desc "Fetch synced/plain lyrics and write them as sidecar files"
  homepage "https://github.com/otaviocc/Lyrics"
  url "https://github.com/otaviocc/Lyrics/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "81e7e1652c552df9ba7c0508952d3fd4859d02bf9a22e408fcf3193e279e4883"
  license "MIT"
  head "https://github.com/otaviocc/Lyrics.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    assert_match "lyrics", shell_output("#{bin}/lyrics --help")
  end
end
