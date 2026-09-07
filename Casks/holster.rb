cask "holster" do
  version "0.3.1"
  sha256 "1bc2dee6cccefd29997fbe3d86fdd04f5685f4180438a326ab41279675ccca96"

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
