HOMEBREW_CLI_VERSION='1.9.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.zip"
  sha256 "9c3983d08a263a02563280cd11899198fc9d1ac626a137896aea9d5dc8fdd752"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"

  def install
    cd buildpath do
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
