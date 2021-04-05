# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IdseqCliV2 < Formula
  desc "A CLI for uploading samples to IDSeq"
  homepage "https://github.com/chanzuckerberg/idseq-cli-v2"
  version "2.0.10-alpha"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/chanzuckerberg/idseq-cli-v2/releases/download/v2.0.10-alpha/idseq-cli-v2_2.0.10-alpha_darwin_amd64.tar.gz"
    sha256 "a968cfd37101af33ca3ab6bfc1f69873380a31e5f7b4243cb0b4de159c514feb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/chanzuckerberg/idseq-cli-v2/releases/download/v2.0.10-alpha/idseq-cli-v2_2.0.10-alpha_darwin_arm64.tar.gz"
    sha256 "089d93bcc683b25bc7fa86e2e9ce24f965b0168b0d00c19f290c750ce7a25c62"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chanzuckerberg/idseq-cli-v2/releases/download/v2.0.10-alpha/idseq-cli-v2_2.0.10-alpha_linux_amd64.tar.gz"
    sha256 "47ba4b7cb6ad5b42d6738c01f165c5a0439766d0dd7584e34eb3546e46ca4643"
  end

  def install
    bin.install "idseq"
    bash_completion.install "completions/bash" => "idseq"
    zsh_completion.install "completions/zsh" => "_idseq"
  end

  test do
    system "#{bin}/idseq --version"
  end
end