class Holodeck < Formula
  desc "macOS CLI and TUI for managing iOS Simulators"
  homepage "https://github.com/otaviocc/Holodeck"
  url "https://github.com/otaviocc/Holodeck/archive/refs/tags/0.3.0.tar.gz"
  sha256 "7703cae59551d22252db12e01bd107e0e2e9d6a97397b0a036083bf6d1a78f52"
  license "MIT"
  head "https://github.com/otaviocc/Holodeck.git", branch: "main"

  depends_on xcode: ["26.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/holodeck"
  end

  test do
    assert_match "holodeck", shell_output("#{bin}/holodeck --help")
  end
end
