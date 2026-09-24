class Snapcode < Formula
  desc "Render code snippets to syntax-highlighted PNG or SVG images"
  homepage "https://github.com/otaviocc/snapcode"
  url "https://github.com/otaviocc/snapcode/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "26bf728943762d87ad122c9d50a8db32de73582bb76b5ffc99615ac37f590138"
  license "MIT"
  head "https://github.com/otaviocc/snapcode.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/snapcode-cli", "--root", prefix
  end

  test do
    (testpath/"hello.rs").write <<~RUST
      fn main() {
          println!("hello");
      }
    RUST
    system bin/"snapcode", "hello.rs"
    assert_path_exists testpath/"hello.png"
  end
end
