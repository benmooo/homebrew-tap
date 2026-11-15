class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.0/lekima-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7a327e07c6c6eacf9da4a7ecbfc004e184ee2e3b7be3875710643c331a8622ad"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.0/lekima-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc6366ac8986044b938320e2d88362ec552f17beef38e4b1ac71e8974f135ce9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.0/lekima-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4874a5ee666aa05c196f850d96a5a0da0ab2cc2460c93cbe76fc8c0ebd97efb4"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.0/lekima-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec30ed7a6cf5ae6a59491344624f34748cd85d6e18e37ca904552f18181d3505"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
