class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.6.0/lekima-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "47058b4d142da93abe6531e17d0e213fefefc1983b77e369b096750714f71326"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.6.0/lekima-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a6c222156a8465a223e12e8728eeb0dc81f1889c6ebf6ed88466cf0fc67d3f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.6.0/lekima-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98ab08bacd489c1e3ee4be5b4ff97e0b2d35f8f29edc62b836204ab0c77cdca1"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.6.0/lekima-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5d63d39ca1708a7a9c123dac6ae29ae41c95f2382493c8fa4f02e35411ac471"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
