class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "cebd89dfa8152c9a9fc1c1e61fc6575e5815aa7afb1316f96e07964500cfdacc"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "5986114cadfd0db32a3d95bdcd83285a35d95a20f6f80f5355443413f7d78751"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d65553d0cddc222811c4d223bc0d645ffc3ac708558878db987ebbfa3a0877f"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.9.0/lekima-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74baabf9138c4cf331064e2c955d522d3a6fbb9a7b183c8f975db23785a07c7d"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
