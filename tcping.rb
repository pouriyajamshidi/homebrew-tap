HOMEBREW_CLI_VERSION='1.21.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "6646ae69c7f323b66eb251ec4fbada51e0d9aeb5d9c7df99fe255ac550024e0b"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "d55ae73de7ae85fc611e0ec72ba2bd247bfe5de2de845aa41ac264dd17d54c0d"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "d6c905650072a65ed9cbfab76fedd7517023efe4033a2ca63c1faf50b8a54ce7"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
