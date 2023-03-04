HOMEBREW_CLI_VERSION='1.19.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "9f5c4fd3dc76692b3b5824ebab45734a1e0b0d998a8a7aee6002fb08aa09e9e7"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "29cb9fd8634bf2ad91441dd02225c6293036791bbdc973c9a935ba651be4389f"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "9d04027fd74b9a384050bb3edf6996fa84f3eb9b33065ecbe38f2d1fee5d50c1"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
