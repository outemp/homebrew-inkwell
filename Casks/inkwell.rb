cask "inkwell" do
  version "2.0.0"
  sha256 "0d8d4cce8d596f18e5702ff5986782f2ddb6d1946b04f0775429596ec76c6092"

  url "https://github.com/outemp/inkwell/releases/download/v#{version}/Inkwell-#{version}-arm64.dmg"
  name "Inkwell"
  desc "Beautiful, minimal Markdown viewer for macOS"
  homepage "https://github.com/outemp/inkwell"

  # Skip quarantine since app is not code-signed
  caveats "This app is not code-signed. If macOS says it's damaged, run:\n  sudo xattr -cr /Applications/Inkwell.app"

  app "Inkwell.app"

  zap trash: [
    "~/Library/Application Support/inkwell",
    "~/Library/Preferences/com.inkwell.app.plist",
  ]
end
