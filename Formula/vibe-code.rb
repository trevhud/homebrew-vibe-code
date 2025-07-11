class VibeCode < Formula
  desc "Seamlessly continue Claude Code conversations on your iPhone"
  homepage "https://github.com/trevhud/vibe-code"
  version "1.0.0-test"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/trevhud/vibe-code/releases/download/v1.0.0-test/vibe-code-macos-arm64.tar.gz"
      sha256 "abb9b594b78e4a1e40485feea8a89c0b067cad376c8a9a939525ab5189a0adc5"
    else
      url "https://github.com/trevhud/vibe-code/releases/download/v1.0.0-test/vibe-code-macos-x64.tar.gz"
      sha256 "dedc459863fea655068878f69d287a4c6b479b04bd4160823a35c3343b24a54d"
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
