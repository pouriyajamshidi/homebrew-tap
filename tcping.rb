HOMEBREW_CLI_VERSION='1.19.2'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "cb4a89246e5e3b0e37f7eab978fb61c12e2c0dcf832e1a6aebf6736dd0d1d71d"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "4fe548dc8fca038a0c1d1be57441cc2dcdc9753ef846279630aa26563c73d31b"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "b2c3775c74c21d9cfeeb31b731b08c093aae8701567f540893639bdfff6ed60d"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
