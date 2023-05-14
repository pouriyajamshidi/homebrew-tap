HOMEBREW_CLI_VERSION='1.22.1'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "6646d6ccfc58141009d65e420be857081e19564b74accf615960a9a21c19fc52"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "52e31a2f7d2dc0ab8a551c2cd53fe33e6ad8d68675f4a78d375498e12fe7513a"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "3f5b3a64595bde9c14e4ab4d3d9fcc227e7126881376b42551c43e56d1fe77fd"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
