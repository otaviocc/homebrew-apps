cask "triton" do
  version "1.2.0"
  sha256 "90d6877c04a251f08820585e8bed94191e5c36319e1bdfcf215d98bd471946bd"

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
