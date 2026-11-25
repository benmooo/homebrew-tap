class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.12.0/lekima-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "bb1aaf10b07978038f54023b59171178f541970ebedd60ce93c7e5b0e6c91e14"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.12.0/lekima-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ea0b218b4e88ecc842f6bb8ed4c31266f631d29e1a39acc17e91217d1b57da5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.12.0/lekima-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "798f90c06f7b70ba10a3eae729eecbeabba8f50d6d197831cb6cfb4f067820e7"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.12.0/lekima-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d51873bedc36503aa1178a63023281ee35f5f189f0880b490216a8945590570"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
