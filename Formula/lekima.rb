class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.0/lekima-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "662e5d3d536d56319ded8916ca57ffa8dc346b132d46d4c9697135e3434b32a9"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.0/lekima-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "455167e67191d443a714550274c93b81447a0d26e08407b18e6d2ac31e2637b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.0/lekima-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47f9eae58fb368efa584a64bdf2bbe9b081a6f5f2d1c38656533f8a25c9b7402"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.7.0/lekima-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86eea9e94e0bd3a7a233936be153a29db06039d2bab019e1ef93da04d7d20234"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
