cask "triton" do
  version "1.5.0"
  sha256 "0380d4406e46536dd0bab3daea8efab5e1978f4c53ded308c1f3e366dbfd3931"

  url "https://github.com/otaviocc/Triton/releases/download/#{version}/OMG.zip"
  name "Triton"
  desc "A native macOS client for omg.lol"
  homepage "https://github.com/otaviocc/Triton"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OMG.app"

  zap trash: [
    "~/Library/Application Support/OMG",
    "~/Library/Caches/OMG",
    "~/Library/Preferences/com.otaviocc.OMG.plist",
  ]
end
