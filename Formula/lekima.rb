class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.1/lekima-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "c20b035035db84971c42b02295d1ca52b9644d8bf1e1e2f6fe061463c6378a8e"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.1/lekima-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "cb2644f54c0618dfee6764ae8d827816f159051b1acf96f980cde166026a1950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.1/lekima-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5ee460e0619827a3bc0ca08bf87f11ebb820d26add62e094fb77219b96aa500"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.1/lekima-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "835d9533dcaafb908deb442fd31f665d7280b10d5400fa5d6345e1425135dcf9"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
