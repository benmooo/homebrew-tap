class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.3.0/lekima-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "3fe2b9a59aab5e875c3c62513c49f7adbc5fa23a9915a91e6aa1b372a739cbb1"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.3.0/lekima-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "5895d5393279d8326aa2f4caa4aff1389f102cc557d064bdcb49104ebfc6535a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.3.0/lekima-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33e6cf9d4757b7b3d94fa0db75d8732eecafc96f423e15e96393104c724a864b"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.3.0/lekima-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4b4727a391160cdf08a8a06b3a82c814db1d53ff755d7a2bf83b3cf4fee25bd"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
