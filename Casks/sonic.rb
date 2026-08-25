cask "sonic" do
  version "0.1.3"
  sha256 "c3b5996ee0d769e5ea469da373c2a5682700d07e7d80b39d644169ba24a4755b"

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
