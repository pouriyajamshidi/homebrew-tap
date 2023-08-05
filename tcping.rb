HOMEBREW_CLI_VERSION='2.0.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "a9db1ab7853a1c4cdf9a0e4e23a10875d987ab65281c1a7375302459fce28ebf"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "819b703d52087a1f4b0f084d0d58bfb525ca7917f3858548578d2455a640a9da"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "9cffa9e86accb2b7a9c72b23576e816a52d8b9341d9df50c45a7e734c0869f7e"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
