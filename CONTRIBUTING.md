# Contributing

Thanks for helping improve the Prilog Homebrew tap.

## Scope

This repository only tracks Homebrew packaging for Prilog tools. Product bugs, CLI behavior, and feature requests should be opened in `Prilog-ai/prilog-cli`.

## Pull Requests

Before opening a pull request:

```sh
brew update
brew tap prilog-ai/tap .
brew audit --strict --online --tap=prilog-ai/tap
brew install --build-from-source prilog-ai/tap/prilog
brew test prilog-ai/tap/prilog
```

Keep formula changes minimal and tied to a released upstream version.
