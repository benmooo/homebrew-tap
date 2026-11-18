class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.2/lekima-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "e3b654bd2ecce3249fd000c5f32080f8f4ca94b1a1e3958a68377689210470e8"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.2/lekima-0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "19312bd464bbdcd30c8cf97cd5aa4f4a17595e2d271daa211cac980be66e38ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.2/lekima-0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a3bcf951f8ff3c3c62c82b8d7e36b81a615436fed64a6cf57577145467fd0d0"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.2/lekima-0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd41900aa29aad3ce9c38086d6264e5c3b0de8cc721b6fded7c2cb8b417257c2"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
