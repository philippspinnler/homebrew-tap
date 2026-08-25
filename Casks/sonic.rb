cask "sonic" do
  version "0.1.2"
  sha256 "01b80fdc5d5f08e438a7020609315c0b82ee727029172e5d6874831e1fbf1cac"

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
