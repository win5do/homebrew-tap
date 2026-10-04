# win5do's Homebrew Tap

Personal Homebrew tap maintained by win5do for command-line tools and macOS
apps. The tap is available as `win5do/tap`.

## Available packages

| Package | Type | Description |
| --- | --- | --- |
| [Treefold](#treefold) | Cask | Local-first macOS workspace for parallel coding agents in isolated Git worktrees. |

## Install and upgrade

### Treefold

Requires Apple Silicon and macOS Sonoma 14 or later.

```bash
brew install --cask win5do/tap/treefold
```

To upgrade an existing installation:

```bash
brew update
brew upgrade --cask treefold
```

The current release is `0.1.0-alpha.1`. It is ad-hoc signed and is not notarized
by Apple. On first launch, approve Treefold in **System Settings → Privacy &
Security → Open Anyway** if macOS blocks it.

The Cask does not link the bundled `treefold` CLI or remove `~/.treefold` on
uninstall. Treefold owns its CLI and Skill integration, while `~/.treefold` may
contain configuration, databases, and Git worktrees.

## Maintenance

Add command-line tools under `Formula/` and macOS apps under `Casks/`, and keep
the package list and installation instructions above up to date.

### Treefold releases

Treefold is installed from the public release assets published by
`win5do/treefold`.

The Cask is ARM64-only and expects this release contract:

```text
tag:   v<VERSION>
asset: Treefold-<VERSION>-arm64.dmg
```

For each release, update `version` and `sha256` in `Casks/treefold.rb` from the
exact DMG that is uploaded. When an Intel artifact is published, add an `arch`
stanza, per-architecture checksums, and the matching `x64` release asset.
