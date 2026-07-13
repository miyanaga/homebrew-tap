# miyanaga/homebrew-tap

Personal Homebrew tap.

## Clipy (fork with encrypted snippet sync)

```sh
brew tap miyanaga/tap
brew install --cask miyanaga/tap/clipy
/usr/bin/xattr -dr com.apple.quarantine /Applications/Clipy.app
```

(The build is not notarized yet and Homebrew removed `--no-quarantine`,
so the quarantine attribute must be cleared manually after each
install/upgrade.)

The cask is updated automatically by the release workflow in
[miyanaga/Clipy](https://github.com/miyanaga/Clipy).
