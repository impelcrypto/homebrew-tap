cask "holster" do
  version "0.1.0"
  sha256 "37b5f67aab5e1fe2cc4a1ec74c9578c543fdd6bde58cb3f6154f851bec70c10f"

  url "https://github.com/impelcrypto/Holster/releases/download/v#{version}/Holster-#{version}.zip"
  name "Holster"
  desc "Menu bar app that runs your prompt templates on selected text"
  homepage "https://github.com/impelcrypto/Holster"

  depends_on macos: ">= :sonoma"
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
