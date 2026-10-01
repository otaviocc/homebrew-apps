class Lyrics < Formula
  desc "Fetch synced/plain lyrics and write them as sidecar files"
  homepage "https://github.com/otaviocc/lyrics"
  url "https://github.com/otaviocc/lyrics/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "0e02d719d09c5202c9cb9dcba23105a49ed3c17035e2055b81a786b7d2a82a88"
  license "MIT"
  head "https://github.com/otaviocc/lyrics.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", ".", "--root", prefix
  end

  test do
    assert_match "lyrics", shell_output("#{bin}/lyrics --help")
  end
end
