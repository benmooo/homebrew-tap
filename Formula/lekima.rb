class Lekima < Formula
  desc "Terminal-native NetEase Cloud Music player, vim-first and agent-native"
  homepage "https://github.com/benmooo/lekima"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.0/lekima-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "371cc3fa1280db51aeb0060d91c37015e2ff3d7ea571cd30abe371fe89319ad8"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.0/lekima-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "44eb774d2e7d7b05f914603b6fd47a5f1999a6c4cc4e151e68e5862de6672c94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.0/lekima-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38e1c87f19a68367523a4bd9b3dec6ec8ea841f97cbef3c3f075139cdc3cd758"
    end
    on_intel do
      url "https://github.com/benmooo/lekima/releases/download/v0.5.0/lekima-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a57a279a41445340afd104e7c46cb63c0e60c92e7c3e5e1bb1456c65afa937a1"
    end
  end

  def install
    bin.install "lekima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lekima --version")
  end
end
