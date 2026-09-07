class Lyrics < Formula
  desc "Fetch synced/plain lyrics and write them as sidecar files"
  homepage "https://github.com/otaviocc/Lyrics"
  url "https://github.com/otaviocc/Lyrics/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "0241346a024673fdffbd7e475c22d91509cd42047e0a129994befd4411932bdc"
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
