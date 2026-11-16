class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.2/lekima-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "cf3462bf3a75608d63904bd226e0fe5290407ec196219fadfaa87a3bca6a3213"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.2/lekima-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "857b5a8ad7aee4b8e3fa463339c74a6d1ff61b351a4ccf7d44ebfc2f9460911d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.2/lekima-0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c9f2021202629a7891dc5a5f7724ad3ee2b2a4b1f0fdb427bd55ff1e35de542"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.2/lekima-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a1c286f88c9eaefb883f006991bbb13aceb3adf2b519615bd9ade27b266acc3"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
