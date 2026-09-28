# homebrew-tap

Homebrew casks for [burrow](https://burrow.ekaksh.in), a tiny mac app for developers: clean the mac, understand the mac, back up the important stuff to a linux box on your network.

```sh
brew install --cask ekakshjanweja/tap/burrow
```

burrow keeps itself up to date after that. To remove it along with its settings and caches:

```sh
brew uninstall --zap --cask burrow
```

Needs macOS 15 or later. The app is signed with Developer ID and notarized by Apple; the download comes from burrow.ekaksh.in.
