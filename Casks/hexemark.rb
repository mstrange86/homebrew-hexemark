cask "hexemark" do
  version "0.1.123"
  sha256 "f4b77cd9e77add53caf67a31c1d2381bfd8f2152c04cb5be8675ab5d84b1b0f6"

  url "https://github.com/mstrange86/homebrew-hexemark/releases/download/v#{version}/hexemark-#{version}.zip"
  name "hexemark"
  desc "Fast native macOS Markdown/GFM + Mermaid viewer & live previewer"
  homepage "https://github.com/mstrange86/homebrew-hexemark"

  app "hexemark.app"
  # hexemark is also a CLI (`hexemark README.md`, `listen`, `install-remote`);
  # symlink it onto PATH (-> #{HOMEBREW_PREFIX}/bin/hexemark) while the GUI bundle
  # stays in /Applications.
  binary "#{appdir}/hexemark.app/Contents/MacOS/hexemark"

  # `brew uninstall --zap` also removes the saved settings.
  zap trash: [
    "~/Library/Application Support/hexemark",
  ]
end
