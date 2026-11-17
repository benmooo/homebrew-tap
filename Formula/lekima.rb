class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.1/lekima-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "22604ce3b68ffcd2bbfa9740b0a7a01aa690db923fab7c8a25d775efce79bdf5"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.1/lekima-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "a7a3c3fd8f790c2389bb4a2c23e7369912b64cf4074c042db96fee330199ecb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.1/lekima-0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3fecc3c7929ee22006557a3f502790312fa68a0506d326c74eef1b9a0c8e493"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.1/lekima-0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c3c34a558facf09a5f6d197c4595f607a989b6e03fb6835c3d2d0421d610557"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
