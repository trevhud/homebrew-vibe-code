class VibeCode < Formula
  desc "Seamlessly continue Claude Code conversations on your iPhone"
  homepage "https://github.com/trevhud/vibe-code"
  version "1.0.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/trevhud/homebrew-vibe-code/raw/main/v1.0.2/vibe-code-macos-arm64.tar.gz"
      sha256 "f0f27464235319520ba9bf575c3895ccad409859329f35d3ae9df59402362ac3"
    else
      url "https://github.com/trevhud/homebrew-vibe-code/raw/main/v1.0.2/vibe-code-macos-x64.tar.gz"
      sha256 "a74db5a3ac4413a7d84c0755596ecf2ae95b4298627a8acae03943d0654facc2"
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
