cask "clipy" do
  version "1.4.0"
  sha256 "1283e9c7744e1d9ee52767675cfee3f47b9ee761dda1161e80411ee25bf1c5fa"

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
