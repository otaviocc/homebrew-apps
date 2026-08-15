class Holodeck < Formula
  desc "macOS CLI and TUI for managing iOS Simulators"
  homepage "https://github.com/otaviocc/Holodeck"
  url "https://github.com/otaviocc/Holodeck/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "629e9e0bb5a1c05905b006b5c6ecc8bab8979ddd0b78b68b13fe38c30bc9468f"
  license "MIT"
  head "https://github.com/otaviocc/Holodeck.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos
  depends_on xcode: "16.0"

  def install
    system "cargo", "install", "--locked", "--path", "crates/holodeck-cli", "--root", prefix
  end

  test do
    assert_match "holodeck", shell_output("#{bin}/holodeck --help")
  end
end
