cask "inkwell" do
  version "1.2.0"
  sha256 "edfcdde8dd04f2a661c08a661507fb08e248f99fc1263fb0cbdfd626658cf071"

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
