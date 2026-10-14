cask "treefold" do
  version "0.1.1"
  sha256 "b8f45d9e0175672a46dfdabbe7a20af98fbfead3d726711a80f16bd96294f070"

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
