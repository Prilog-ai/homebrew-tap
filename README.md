# Prilog Homebrew Tap

[![Tap](https://img.shields.io/badge/Homebrew-prilog--ai%2Ftap-FBB040?logo=homebrew&logoColor=white)](https://github.com/Prilog-ai/homebrew-tap)
[![Formula](https://img.shields.io/badge/formula-prilog-014751)](Formula/prilog.rb)
[![License](https://img.shields.io/github/license/Prilog-ai/homebrew-tap)](LICENSE)

Official Homebrew tap for Prilog developer tools.

## 🚀 Install Prilog CLI

```sh
brew install prilog-ai/tap/prilog
```

Or tap first:

```sh
brew tap prilog-ai/tap
brew install prilog
```

Verify the install:

```sh
prilog version
prilog login
```

## 📦 Formulae

| Formula | Description |
| --- | --- |
| `prilog` | CLI for connecting repositories to Prilog, ingesting logs and traces, reviewing generated fixes, and creating pull requests. |

## 🔄 Update

```sh
brew update
brew upgrade prilog
```

## 🧹 Uninstall

```sh
brew uninstall prilog
brew untap prilog-ai/tap
```

## 🛠️ Maintainer Workflow

Update `Formula/prilog.rb` whenever the CLI publishes a new release tag. The formula should point to the released upstream tag and the exact commit SHA for that tag.

Local validation:

```sh
brew update
brew tap prilog-ai/tap .
brew audit --strict --online --tap=prilog-ai/tap
brew install --build-from-source prilog-ai/tap/prilog
brew test prilog-ai/tap/prilog
```

Release checklist:

- ✅ Upstream CLI tag exists in `Prilog-ai/prilog-cli`.
- ✅ `Formula/prilog.rb` has the new `tag` and matching `revision`.
- ✅ `brew audit` passes.
- ✅ `brew install --build-from-source` succeeds.
- ✅ `brew test` prints the expected `prilog` version.

## 🔐 Security

This tap only packages Prilog tools. Authentication, authorization, and API behavior are implemented in the upstream CLI and Prilog API.

Please do not open issues containing access tokens, refresh tokens, private repository URLs, or sensitive logs.

## 🤝 Support

- Homebrew packaging issues: [Prilog-ai/homebrew-tap issues](https://github.com/Prilog-ai/homebrew-tap/issues)
- CLI product/runtime issues: [Prilog-ai/prilog-cli issues](https://github.com/Prilog-ai/prilog-cli/issues)
- Website: [prilog.ai](https://prilog.ai)
