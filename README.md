# homebrew-tap

Homebrew tap for [Sonic](https://github.com/philippspinnler/sonic), a multi-profile session
manager for Claude Code on macOS.

```sh
brew install --cask --no-quarantine philippspinnler/tap/sonic
```

Sonic is not notarized; `--no-quarantine` lets macOS open it. Without it, run
`xattr -cr /Applications/Sonic.app` once after installing.
