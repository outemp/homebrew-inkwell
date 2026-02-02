cask "inkwell" do
  version "2.1.0"
  sha256 "0be183ea89bd935b06b73991aafefe2cff75ed7547453c2b28b1976c4c71b8b8"

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
