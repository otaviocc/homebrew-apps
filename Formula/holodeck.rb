class Holodeck < Formula
  desc "macOS CLI and TUI for managing iOS Simulators"
  homepage "https://github.com/otaviocc/Holodeck"
  url "https://github.com/otaviocc/Holodeck/archive/refs/tags/0.2.0.tar.gz"
  sha256 "724d2f69e27eb5d6f7595adb525d17489535bb9562b2a50175806e5b90af2a57"
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
