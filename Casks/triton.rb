cask "triton" do
  version "1.4.0"
  sha256 "dc08c789bf95fc1bbf554c86b8fedb7fdab786e2557dbedd2f1771760c756fc5"

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
