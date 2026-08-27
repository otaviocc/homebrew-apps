class Lyrics < Formula
  desc "Fetch synced/plain lyrics and write them as sidecar files"
  homepage "https://github.com/otaviocc/Lyrics"
  url "https://github.com/otaviocc/Lyrics/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "79be73db41502a8072f9c38fbc3b2f18f05e50d5d78f53e12a1bf43b1ee9e810"
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
