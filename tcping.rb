HOMEBREW_CLI_VERSION='2.8.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-darwin-arm64-static.tar.gz"
      sha256 "7eed612e549a2c53412d74abf3ac860742e4e7f889cb46fd554e6b96df66d765"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-darwin-amd64-static.tar.gz"
      sha256 "ad8ba6a1de400c3f50ec997f42a9565e048ee3260b30840654489963908662de"
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
      sha256 "4439f4d11c71675a174573acf0016fe9f8a5a3ccd406cec0f6a563b0446f44d5"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-linux-amd64-static.tar.gz"
      sha256 "f88d660ec6d59b1295a229f89c41ce0c8d5df7a3c1e9a1e4f6016deba43ba569"
    end
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
