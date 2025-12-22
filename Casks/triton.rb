cask "triton" do
  version "1.3.0"
  sha256 "7b6b3694930d4a22a7dc84a32c7c62f237b91b482adde11e79315f0e585aaadc"

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
