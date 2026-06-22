# Prilog Homebrew Tap

Homebrew formulae for Prilog developer tools.

## Install

```sh
brew install prilog-ai/tap/prilog
```

Or tap first:

```sh
brew tap prilog-ai/tap
brew install prilog
```

## Formulae

| Formula | Description |
| --- | --- |
| `prilog` | CLI for connecting repositories to Prilog, ingesting logs and traces, reviewing generated fixes, and creating pull requests. |

## Maintain

Update `Formula/prilog.rb` whenever the CLI publishes a new release tag.

```sh
brew update
brew tap prilog-ai/tap .
brew audit --strict --online --tap=prilog-ai/tap
brew install --build-from-source prilog-ai/tap/prilog
brew test prilog-ai/tap/prilog
```

## Support

Open an issue in this repository for Homebrew packaging problems. Open CLI product or runtime issues in `Prilog-ai/prilog-cli`.
