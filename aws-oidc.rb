# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.2.0/aws-oidc_0.2.0_darwin_amd64.tar.gz"
    sha256 "93711a98d29cd062ece7723d91f16f992157f30c7f17ba51caf03dc1907f9320"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.2.0/aws-oidc_0.2.0_linux_amd64.tar.gz"
      sha256 "46b97bb925a2ac0d586b18e5fec0e1d94acae4707eb4627d521e894171098c2d"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end