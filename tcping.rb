HOMEBREW_CLI_VERSION='1.19.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "12f4dfde7e5d6dc5c52221a1539ed3189060ac0b48d6177d2e091900ea97a1b0"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "0c62fd1e5f63d3630dd2e34484c7d1a6ec93a51da57371edfb49d2b372743401"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "7d943042ef586b860519496fa566341efafc0fd32ef4abbabd5db42c6081eac8"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
