# Homebrew Tap for Luan

This tap provides the Homebrew cask for [Luan](https://luan.fuyo.app/), a menu bar app that plays sound cues for your coding workflow on macOS.

## Install

```sh
brew install --cask onepiece-studio/tap/luan
```

This single command adds the tap and installs Luan. Luan requires Apple Silicon and macOS 15 or later.

## Updates

Luan updates itself from within the app, so you don't need to run `brew upgrade` to stay current.

## Uninstall

First, in Luan under **Settings > Integrations**, remove the hooks Luan added to Claude Code, Codex, Grok, Antigravity, Copilot and Cursor. Homebrew can't remove them for you.

Then uninstall the app:

```sh
brew uninstall --cask luan
```

To also delete Luan's data in `~/.luan` and its preferences, use `--zap`:

```sh
brew uninstall --zap --cask onepiece-studio/tap/luan
```

## More

Website: https://luan.fuyo.app/
