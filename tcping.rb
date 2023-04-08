HOMEBREW_CLI_VERSION='1.19.2'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "1033bb0051c97e100e2ba44e4e83352a3065c6eca3aec68d48ae3df764347452"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "3db0c7e15b91fd95c79e0d2dc8bcfe9a33877bb4f8c5494b1e201ae93a12700f"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "9e9baef87c5a8bbe2817fd519fad3227a5591ccf7af847633b62912800c26188"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
