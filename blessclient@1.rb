# This file was generated by GoReleaser. DO NOT EDIT.
class BlessclientAT1 < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.0.0/blessclient_1.0.0_darwin_amd64.tar.gz"
    sha256 "5687a5e3199700640da5b0561ef2299725d86cd955a276de3fcf401e16f3a76f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.0.0/blessclient_1.0.0_linux_amd64.tar.gz"
      sha256 "198d1c75ce2e853bac83ef3fce0c2a9fe760b93c606d6e53cc0d1cdd4c6f09e4"
    end
  end

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
