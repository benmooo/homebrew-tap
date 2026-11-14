class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bee23682ebc3daa1b833836454cd586ffbfd87c820c8b825d008bcfbfa6dabd0"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f3e823f7431a345b31ec1d85317e9c85494fbd69be548fbb6fee5fd572de5395"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2a37f7997db56faba3cc76c273cf7551e014c3a40675c4da382a0d634f84cc3"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.1.1/lekima-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40db4cc12724d4944d0468d58db63855a880f16aaa162294f9bb43b45ec7f207"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
