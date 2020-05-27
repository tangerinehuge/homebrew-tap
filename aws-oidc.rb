# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.4.0/aws-oidc_0.4.0_darwin_amd64.tar.gz"
    sha256 "d4a84fbb7d41a812f21f69898b3ff727e9582a6dfbd1163c1276e5c394371b35"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.4.0/aws-oidc_0.4.0_linux_amd64.tar.gz"
      sha256 "bc74fd860cd9e398b470c7d878719e80a0e780dc50afdac6aaa52366354e021e"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
