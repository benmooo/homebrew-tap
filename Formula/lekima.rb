class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.1/lekima-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "a3f974d743ee66f824a4a95e4c2f0d1e3473e1b425364d7d8f3e230912fd5513"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.1/lekima-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "97a869d2734333b20b63e5cd85eed7fdb163feec9acde409ecceabddd0126217"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.1/lekima-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20d54dd22d2b0942f41cbd0dc0407c517fc9bdab6f7e0dafb7f43901c0da022f"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.1/lekima-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64f516a45f52c300e6840c3e42eee27767c09181a112ad6a8da66c3c89dfa1c6"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
