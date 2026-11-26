class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.13.0/lekima-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "d376b190838c2d7c054a0d7358f7f34d2c9ddc9df0015afe6ac5545618c40abd"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.13.0/lekima-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "2e08480b107e9f5b2d66e1dbc7298c38812ee7755fb4a9d5db05d94e490c6611"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.13.0/lekima-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac461f63439660d295a7b48538160b5b4d99dcd386dc0030a68e113a9ab70553"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.13.0/lekima-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7a8f725ec8f9f77829829e900b307bfd865cefc7df29d93ed7021b67ebba4dc"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
