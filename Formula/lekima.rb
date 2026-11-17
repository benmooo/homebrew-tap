class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "95bf3fee9afa5fab9a950916dd08edb2e0965115f4df70f972f6ecf9ef808375"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "a5d6d195669c975009b4ce19225a16f8a669cdcabe8d06dc4f43ee23cb5deb89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5d3e6a78d13950ca468b4b24e22b4be732cd63548551a1fcf7f516505393a27"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de3700c811aa6ab9b96a76d92daf2f44ed3373eee519b4497dfb7c52cc105adc"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
