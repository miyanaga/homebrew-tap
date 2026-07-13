cask "clipy" do
  version "1.3.0"
  sha256 "03e8c77c5640aa8db03880c022b484001f37e08ef612d2aee6d4100a9c63af0c"

  url "https://github.com/miyanaga/Clipy/releases/download/v#{version}/Clipy-#{version}.zip"
  name "Clipy"
  desc "Clipboard extension app (miyanaga fork with encrypted snippet sync)"
  homepage "https://github.com/miyanaga/Clipy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :ventura"

  app "Clipy.app"

  caveats <<~EOS
    This build is not notarized yet. Install with:
      brew install --cask --no-quarantine miyanaga/tap/clipy
    or set HOMEBREW_CASK_OPTS="--no-quarantine".
  EOS
end
