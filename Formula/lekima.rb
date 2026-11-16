class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.8.0/lekima-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e729725aa564fdb6dfabb186eea2f1ac4f7ad998ce1464013819ce34e393c398"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.8.0/lekima-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "b0fe64ebb6f1955f6def56711a10b039151256e8c0731f94c201aa14e6d83905"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.8.0/lekima-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28befa7c22cd39486d4b1c8f35a111787ec1b03e55836be8613809c66967e744"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.8.0/lekima-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8882fb569d560071e35033b3683cd0a3b5928e343eab4d1aad495b73244d2aa3"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
