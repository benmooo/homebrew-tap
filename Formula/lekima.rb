class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.1/lekima-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "a619958e46cc10b3b33388b5fa9da61cba79b04a13bf408ef105a2d267296b4e"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.1/lekima-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "2c35cd6704a48489a076f16e8eeb42b8f94cc9008e828ab3c97f920e9c55bee0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.1/lekima-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de708f638f41dec17c87e6f20db8e867f37b64f0039435a37f3463f8eb6a5d64"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.4.1/lekima-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a558dfafc73ebebfe314868587b371ab8f7622f27cff2b5e83a4c49e1516b3e"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
