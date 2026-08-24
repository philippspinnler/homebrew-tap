# homebrew-tap

Homebrew tap for [Sonic](https://github.com/philippspinnler/sonic), a multi-profile session
manager for Claude Code on macOS.

```sh
brew trust --cask philippspinnler/tap/sonic   # Homebrew 6+ requires trusting third-party casks
brew install --cask philippspinnler/tap/sonic
```

Sonic is not notarized with Apple; the cask clears the quarantine flag after installing so the
app opens normally. If macOS still reports it as damaged, run `xattr -cr /Applications/Sonic.app`.
