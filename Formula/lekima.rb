class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.1/lekima-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "54ba47e6e5b5817aa26b6e5c0297b4c835fb6bd11ce740c2c8832f326a77f19c"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.1/lekima-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "5737667e80a4eb16e41b46c4e6325cd0de8da63e9ed667c11df4ca7862035e4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.1/lekima-0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc8b42e9a48724044de47fba5d13f480ddbaefcdaa47414a85a02306c4419e02"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.11.1/lekima-0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01c563d841bcb9a4ed01205ef5062a62e5bf2e80b10891e2c8ff5d56ed030c62"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
