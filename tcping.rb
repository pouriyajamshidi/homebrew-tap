HOMEBREW_CLI_VERSION='1.21.2'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "b0b42785710d438f4bab96ad4a644819884563cb02a23eae069128440d332567"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "5c7f3161947ceeea13436cccf2c32814443c7b58a4ba975a6476212e0917acba"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "c4994dd990a34b12bc48902d7d3810b3f38d6e66c886c89a0b22840f0691d3af"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
