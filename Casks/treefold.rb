cask "treefold" do
  version "0.1.0-alpha.20260821005557"
  sha256 "bfa85521dc31ab81069cf92719b29053972d3a96c952d247c9e5a06f1e0f263d"

  url "https://github.com/win5do/treefold/releases/download/v#{version}/Treefold_#{version}_aarch64.dmg"
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
