cask "sonic" do
  version "0.1.7"
  sha256 "95c35a41c878860194717fd8f53d2fd6ff0a70ab1b4c084ce39f3cdfa9423442"

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
