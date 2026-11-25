class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.0/lekima-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "62278bafcaa34752a665f7ffe8dd429370ca6bce6728c4bc53801dce7fe33217"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.0/lekima-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "914ffacd8bb63b97338611705eb31e9c095715b1dee5896fb8497734656cb874"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.0/lekima-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad5896ae47dfddc07cc5ca50e74aa3dc5ced42b01823d65696851535cd5daf5f"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.0/lekima-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93490365f42d39e7a868367bc345a42df11fa7cd145abef775b2e1184f411c35"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
