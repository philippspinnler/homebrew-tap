cask "sonic" do
  version "0.1.11"
  sha256 "1659d33a583fd36658e239e90571ad57cfce2383489fe5efca2474667660c93b"

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
