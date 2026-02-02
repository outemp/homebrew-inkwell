cask "inkwell" do
  version "1.3.0"
  sha256 "7c05c26fcc0b84a92c809b0cc456bd389ef063e2a7e665591b69339c6e78d41b"

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
