cask "treefold" do
  version "0.1.0-alpha.1"
  sha256 "a8efacc7f3238b9ad96777c9095598e3b20d769e7af62c75a1852b8d597efed0"

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
