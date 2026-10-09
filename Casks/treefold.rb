cask "treefold" do
  version "0.1.0-alpha.2"
  sha256 "bf95af2e55be6ff88e136ef3e6c95ccb59ffce80d03991dfdb6b7fce45c63030"

  url "https://github.com/win5do/treefold/releases/download/v#{version}/Treefold-#{version}-arm64.dmg"
  name "Treefold"
  desc "Local-first workspace for parallel coding agents"
  homepage "https://github.com/win5do/treefold"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Treefold.app"

  caveats <<~EOS
    This alpha release is ad-hoc signed. On first launch, macOS may require you
    to approve Treefold in System Settings > Privacy & Security.
  EOS
end
