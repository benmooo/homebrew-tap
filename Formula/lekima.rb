class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.1/lekima-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "af0eb07603f9e50b60a5325d539633b798000050f354d6ab4a9dfe0797d47e1f"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.1/lekima-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "43f3b4da53871a80d2c623f131c56c14737b08dfd2087801e7589b94639b8a3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.1/lekima-0.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8c7c26fc4fa3307f5f03e061b8ac0aeaa5c244c04a2ba7e4abb802c7971216d"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.1/lekima-0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca5abb7d979b7860e945c11ff109a5cc1c2b63bc64213c2069237fc422c4d17e"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
