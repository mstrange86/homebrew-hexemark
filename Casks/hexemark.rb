cask "hexemark" do
  version "0.1.095"
  sha256 "8c6234803759c36500ead5fc3697ae903ed9f826443452ce98d377812ed6f96a"

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
