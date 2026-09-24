class Snapcode < Formula
  desc "Render code snippets to syntax-highlighted PNG or SVG images"
  homepage "https://github.com/otaviocc/snapcode"
  url "https://github.com/otaviocc/snapcode/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9a0cf2f849296f8ab296199e839da4502e7366eab907dec80ccc43578dab2480"
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
