class VibeCode < Formula
  desc "Seamlessly continue Claude Code conversations on your iPhone"
  homepage "https://github.com/trevhud/vibe-code"
  version "1.0.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/trevhud/homebrew-vibe-code/raw/main/v1.0.1/vibe-code-macos-arm64.tar.gz"
      sha256 "564941ab36a92554178fa5629de31f1022cc60e5b5d95350da6257cfdf7eb196"
    else
      url "https://github.com/trevhud/homebrew-vibe-code/raw/main/v1.0.1/vibe-code-macos-x64.tar.gz"
      sha256 "9d7bb551bdb32314aa67061c363f5e1392414c5a48e20e18bd6fd6bf8662b925"
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
