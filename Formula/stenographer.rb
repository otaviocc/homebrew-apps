cask "stenographer" do
  version "1.0.0"
  sha256 "e7a3d79daf9712f763d7469a4ae83c36e418b205dc2f652fdf4911d1245a0552"

  url "https://github.com/otaviocc/Stenographer/releases/download/#{version}/Stenographer.zip"
  name "Stenographer"
  desc "Audio transcription application"
  homepage "https://github.com/otaviocc/Stenographer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Stenographer.app"

  zap trash: [
    "~/Library/Application Support/Stenographer",
    "~/Library/Caches/Stenographer",
    "~/Library/Preferences/com.otaviocc.Stenographer.plist",
  ]
end
