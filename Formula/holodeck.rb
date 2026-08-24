class Holodeck < Formula
  desc "macOS CLI and TUI for managing iOS Simulators"
  homepage "https://github.com/otaviocc/Holodeck"
  url "https://github.com/otaviocc/Holodeck/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "1a814b328812b72c373e091bed77d1bb74713701fc1880dbe8c50f63ffaa815f"
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
