class Holodeck < Formula
  desc "macOS CLI and TUI for managing iOS Simulators"
  homepage "https://github.com/otaviocc/Holodeck"
  url "https://github.com/otaviocc/Holodeck/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "13093841f40a7225f77c59d217e7e663d57d7d2c19550a716b38d50fb88ede36"
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
