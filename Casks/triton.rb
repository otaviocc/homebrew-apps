cask "triton" do
  version "1.1.0"
  sha256 "91c955adf471dec33721f9bdd075064dac243994e29af764ff60ab460b0ba494"

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
