class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "e3dcac42efb31072c0f3b28be48330dd69b6e6c5efa9ed13f095adebb89e78af"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "67ac1370591ceccb02519677cc890dde4dcaa08ffaeb8fd83b9ed41cc5e0dc48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "494865a393548c27613b1025235c901f79a517174e833218024258a9face73e4"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd0714f5696588a708e2752708a12e488a8c70fcf7283a8b28c37303d0f26350"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
