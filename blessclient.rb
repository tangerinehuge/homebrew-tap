# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  version "1.5.2"
  bottle :unneeded

  if OS.mac? && (Hardware::CPU.intel? || Hardware::CPU.arm?)
    url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.5.2/blessclient_1.5.2_darwin_amd64.tar.gz"
    sha256 "4c4934e046dcaab561a9b87c67da08bd1378318b49246e22ccdc35943d358568"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chanzuckerberg/blessclient/releases/download/v1.5.2/blessclient_1.5.2_linux_amd64.tar.gz"
    sha256 "9aeb1eb208115336390262a01943a8cff0a7b16357cee70f31c14ee687174fd3"
  end

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
