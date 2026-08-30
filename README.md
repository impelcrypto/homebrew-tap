# impelcrypto/tap

Homebrew tap for [Holster](https://github.com/impelcrypto/Holster), a macOS menu
bar app that runs your prompt templates on selected text.

```sh
brew tap impelcrypto/tap
brew trust impelcrypto/tap   # Homebrew refuses casks from taps you have not trusted
brew install --cask holster
```

Apple Silicon only, macOS 14 or later. The app is signed but not notarized, so
the first launch needs one approval in System Settings → Privacy & Security.
