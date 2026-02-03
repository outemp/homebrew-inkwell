cask "inkwell" do
  version "2.2.0"
  sha256 "00eabf039928afc5e8f4fb11eb6631e43469a226f028945df6b458c80bb7a518"

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
