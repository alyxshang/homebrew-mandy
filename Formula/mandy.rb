# HOMEBREW-MANDY by Alyx Shang.
# Licensed under the FSL v1.

class Mandy < Formula
  desc "A light and fast static-site generator."
  homepage "https://github.com/alyxshang/mandy"
  version "0.1.0"
  if Hardware::CPU.intel? and OS.mac?
    url "https://github.com/alyxshang/mandy/releases/download/v.0.1.0/mandy-macos-x64-v.0.1.0.tar.gz"
    sha256 "c4b17fa289ec18019e3ee3e0d1ddaaaf655c26cbcc15f6b13afebddddd8fecbd"
  elsif Hardware::CPU.arm? and OS.mac?
    url "https://github.com/alyxshang/mandy/releases/download/v.0.1.0/mandy-macos-aarch64-v.0.1.0.tar.gz"
    sha256 "694b35f167619bb35dadf6d889b07118cbdf1c5f54851344649a6ffc970842cf"
  elsif Hardware::CPU.intel? and OS.linux? and Hardware::CPU.is_64_bit?
    url "https://github.com/alyxshang/mandy/releases/download/v.0.1.0/mandy-linux-v.0.1.0.tar.gz"
    sha256 "c3e95a5a6fcfd8763902f28d9b5dda86bbbc1a842a75b06a2e402f5cd3a16bef"
  else
    odie "Unsupported platform."
  end
  def install
    bin.install "mandy"
  end
end
