cask "holster" do
  version "0.1.1"
  sha256 "274e673eb29f729cb47600ea178b28e1e8b3e973c4ad33273d51c90616a690b3"

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
