HOMEBREW_CLI_VERSION='2.0.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "f24b8db769e389782185edbc5d8510f803695123704ba235e7a5b2293a64a57b"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "04328fe1480cb1c8759cec6c5329bd34e29fcdf15116051063613404e1a311f5"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "0ac4051647c09314c029ac0ef8089699879d75686f0c437cb4d70cdc5e1098f7"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
