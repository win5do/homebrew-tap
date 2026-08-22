# Homebrew Tap for Treefold

This repository is the Homebrew tap `win5do/tap`. Its Treefold Cask is prepared
for release assets published by `win5do/treefold`.

## Install

Once the referenced GitHub Release is available:

```bash
brew install --cask win5do/tap/treefold
```

For private testing from this local checkout:

```bash
brew tap win5do/tap /Users/admin/code/codebase/self/rs-agent/homebrew-tap
brew install --cask win5do/tap/treefold
```

The current Cask is ARM64-only and expects this release contract:

```text
tag:   v<VERSION>
asset: Treefold_<VERSION>_aarch64.dmg
```

For each release, update `version` and `sha256` in `Casks/treefold.rb` from the
exact DMG that is uploaded. When an Intel artifact is published, add an `arch`
stanza, per-architecture checksums, and the matching `x64` release asset.

The Cask intentionally does not link the bundled `treefold` CLI or remove
`~/.treefold` on uninstall. Treefold owns its CLI and Skill integration, while
`~/.treefold` may contain configuration, databases, and Git worktrees.
