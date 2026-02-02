cask "inkwell" do
  version "1.1.0"
  sha256 "06ce17f37b32e6163ad351ef6d013a87d9ee7953eb1e5dbaedd9cc66464190d9"

  url "https://github.com/outemp/inkwell/releases/download/v#{version}/Inkwell-1.0.0-arm64.dmg"
  name "Inkwell"
  desc "Beautiful, minimal Markdown viewer for macOS"
  homepage "https://github.com/outemp/inkwell"

  app "Inkwell.app"

  zap trash: [
    "~/Library/Application Support/inkwell",
    "~/Library/Preferences/com.inkwell.app.plist",
  ]
end
