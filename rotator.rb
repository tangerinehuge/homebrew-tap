# This file was generated by GoReleaser. DO NOT EDIT.
class Rotator < Formula
  desc "Rotating credentials."
  homepage "https://github.com/chanzuckerberg/rotator"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/rotator/releases/download/v0.2.0/rotator_0.2.0_darwin_amd64.tar.gz"
    sha256 "171be0416f4d6f8ff8f4bb0cc4f032a4010b9ecea958c55dbf6363d22c9c83dd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/rotator/releases/download/v0.2.0/rotator_0.2.0_linux_amd64.tar.gz"
      sha256 "9b040c68d718489ea2b4545dee1304ee8d981713d7317c7e8c7eef3f0cf6ce11"
    end
  end

  def install
    bin.install "rotator"
  end

  test do
    system "#{bin}/rotator --help"
  end
end
