cask "sonic" do
  version "0.1.0"
  sha256 "d610b5481b43ec03578ee858791f59ff13c1a34cbe05761249554826e12126ff"

  url "https://github.com/philippspinnler/sonic/releases/download/v#{version}/Sonic-#{version}.zip"
  name "Sonic"
  desc "Multi-profile session manager for Claude Code"
  homepage "https://github.com/philippspinnler/sonic"

  depends_on macos: :ventura

  app "Sonic.app"

  # Sonic is not notarized (no Apple Developer ID); clear the quarantine flag so
  # macOS lets the app open instead of reporting it as damaged.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Sonic.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.sonic.app",
  ]
end
