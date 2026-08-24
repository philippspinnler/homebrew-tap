cask "sonic" do
  version "0.1.0"
  sha256 "d610b5481b43ec03578ee858791f59ff13c1a34cbe05761249554826e12126ff"

  url "https://github.com/philippspinnler/sonic/releases/download/v#{version}/Sonic-#{version}.zip"
  name "Sonic"
  desc "Multi-profile session manager for Claude Code"
  homepage "https://github.com/philippspinnler/sonic"

  depends_on macos: ">= :ventura"

  app "Sonic.app"

  zap trash: [
    "~/Library/Application Support/com.sonic.app",
  ]
end
