class Holodeck < Formula
  desc "macOS CLI and TUI for managing iOS Simulators"
  homepage "https://github.com/otaviocc/Holodeck"
  url "https://github.com/otaviocc/Holodeck/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "7d59d0e3fd59d520437dafcbc2dbc2417d36e1abd884d35416d69377cea4bdfb"
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
