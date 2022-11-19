HOMEBREW_CLI_VERSION='1.12.1'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.zip"
  sha256 "93523a1bbaf83a89f1ec3631c6cc28feeebfcfd68adc65fcb9d16426ca512639"
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
