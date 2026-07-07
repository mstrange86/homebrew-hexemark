cask "hexemark" do
  version "0.1.094"
  sha256 "378bd47961281f2c67e6140e5768d73ca8ade84eba0cca62d467e690fd2083da"

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
