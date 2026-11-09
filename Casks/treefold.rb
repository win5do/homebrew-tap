cask "treefold" do
  version "0.3.0"
  sha256 "44a63c361c3a9a8f0992866f526735fd6a95352a143335f34d7ca019f0e826b3"

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
