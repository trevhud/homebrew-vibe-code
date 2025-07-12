class VibeCode < Formula
  desc "Seamlessly continue Claude Code conversations on your iPhone"
  homepage "https://github.com/trevhud/vibe-code"
  version "1.0.0-test"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/trevhud/homebrew-vibe-code/raw/main/vibe-code-macos-arm64.tar.gz"
      sha256 "9a953e01d3789e4d22955bc00efb1ca145346d82c84887353183a4cf345add4d"
    else
      url "https://github.com/trevhud/homebrew-vibe-code/raw/main/vibe-code-macos-x64.tar.gz"
      sha256 "54345c3595eee91aa5e3a2959d908d18b0e39bc0d07dcd799cbe411978a1be57"
    end
  end

  depends_on "tailscale"
  depends_on "tmux"

  def install
    bin.install "vibe-code"
  end

  def post_install
    puts "🎉 Vibe Code installed successfully!"
    puts ""
    puts "Next steps:"
    puts "1. Run 'vibe-code setup' to configure your system"
    puts "2. Download Vibe Code from the App Store on your iPhone"
    puts "3. Follow the setup guide: https://github.com/trevhud/vibe-code#setup"
  end

  test do
    assert_match "vibe-code", shell_output("#{bin}/vibe-code --version")
  end
end