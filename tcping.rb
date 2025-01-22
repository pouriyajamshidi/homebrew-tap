HOMEBREW_CLI_VERSION='2.7.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-darwin-arm64-static.tar.gz"
      sha256 "4d7e93a222b24cc4309cccb5dacbcfa96217e457ec3b13f73bc414948a17acdd"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-darwin-amd64-static.tar.gz"
      sha256 "d95d45dca7875a5c5f6a2ec8f78019693c5d3dd419a20e386c147a27b671e5af"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-linux-arm64-static.tar.gz"
      sha256 "6128242275b99fe5311828b7e3b18aec5c188119fdbf952b491e900717bc36ba"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-linux-amd64-static.tar.gz"
      sha256 "d5677c55039fb9f42ce54d00ed9bc8c6a682577f4cb51c6434782ec1b420c93a"
    end
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
