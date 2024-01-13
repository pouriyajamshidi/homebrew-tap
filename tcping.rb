HOMEBREW_CLI_VERSION='2.5.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "c8271bed07030abc922d7ba2047775cbfa2124dbe1497e6b066e399ba811fa41"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "e544daf3511461d83c0d88d5d70d6d8e8b543a66ea33229c125c20a31b8145c6"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "32c576fd7f813c79ddf5807e50ad09e9c53c90e73275e7f578500b00ac258554"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
