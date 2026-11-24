class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.0/lekima-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d4d714c163359282515fa5db2fbf4e259a4c41ae9404a79ddd6bc09081c6e24"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.0/lekima-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "44e191325dc84f5206a61087a681c3d0697c7bc0061e305f2b6000228a020d1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.0/lekima-0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e2339a385cc17be2a5a32042a7310ddcb20f5bfa27b6098679a35947ea0e1d0"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.10.0/lekima-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40bfb87c4e5f19de54e469f28f83cefd0eac7b752dff55b955e5b60842051d15"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
