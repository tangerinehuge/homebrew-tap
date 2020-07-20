# This file was generated by GoReleaser. DO NOT EDIT.
class BlessclientAT1 < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  version "1.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.4.0/blessclient_1.4.0_darwin_amd64.tar.gz"
    sha256 "6d536e43c76187b55e7996d64e31ce215c1fc79b78485b71e3c3844270d5100b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.4.0/blessclient_1.4.0_linux_amd64.tar.gz"
      sha256 "fbdc89171efb04ca8fc8eb87b4f2bafd394b77a7dee96b2a62ee57cf2f25f92f"
    end
  end

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
