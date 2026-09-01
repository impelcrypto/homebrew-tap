cask "holster" do
  version "0.2.0"
  sha256 "0cd1f3e3846452ee81b56878604ed0ef5ae637d1a1b6b63c77b938ef6f2b4aa2"

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
