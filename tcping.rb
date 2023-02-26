HOMEBREW_CLI_VERSION='1.19.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
    sha256 "8355c5b09c92b1336f4c15ab30d5c51faac947b7fd56713a85f1572bf8a4e95a"

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "b14adf8e4bb52711daf55e4ec8c477042bd82d4fb1550593a7a3a6e0a87d00a1"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
