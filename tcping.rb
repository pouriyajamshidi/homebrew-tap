HOMEBREW_CLI_VERSION='1.12.1'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.zip"
  sha256 "5fe89401fdbfe269760bcc1491896bf8c5b441add0877acf13cb957a4ac1759b"
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
