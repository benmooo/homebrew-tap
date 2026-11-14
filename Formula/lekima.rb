class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b67f175c2d3149797ce89496ffc98c723c7ef01e57f60dd9abba99cda0a92716"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "fc9c26bea5c3ab37647bfe7c6372d5f6e9adf6349dd3378785cce5f871afbff2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f0794325aebcce90b88a3b35e2b0db361d9cf20f2f980de445cfdb71497528a"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d21639f612a08f0cd70594bc9d82e7c3ef42ea2bcdb9cf212777bcc63c6bb68a"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
