cask "holster" do
  version "0.3.0"
  sha256 "d0e1c49dceac489dd5f760d452f23d687ffd0fbd61884258b36717ab7d2e4e18"

  url "https://github.com/impelcrypto/Holster/releases/download/v#{version}/Holster-#{version}.zip"
  name "Holster"
  desc "Menu bar app that runs your prompt templates on selected text"
  homepage "https://github.com/impelcrypto/Holster"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Holster.app"

  uninstall quit: "app.holster"

  # API keys live in the Keychain, which zap cannot reach: remove the
  # "Holster" entries by hand in Keychain Access if you want them gone.
  zap trash: [
    "~/.config/holster",
    "~/Library/Preferences/app.holster.plist",
  ]
end
