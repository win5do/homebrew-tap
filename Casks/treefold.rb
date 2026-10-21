cask "treefold" do
  version "0.1.3"
  sha256 "bc7a2f0ec7c26cf35e2da14e3233afc945f254f7d23eaa9db26434e53412ff00"

  url "https://github.com/win5do/treefold/releases/download/v#{version}/Treefold-#{version}-arm64.dmg"
  name "Treefold"
  desc "Local-first workspace for parallel coding agents"
  homepage "https://github.com/win5do/treefold"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Treefold.app"

  caveats <<~EOS
    Treefold is ad-hoc signed. On first launch, macOS may require you
    to approve Treefold in System Settings > Privacy & Security.
  EOS
end
