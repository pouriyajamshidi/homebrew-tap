HOMEBREW_CLI_VERSION='2.5.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "a39325164385daecd03f913aa9a528ddcc01eecca146bf9c57e619e0cf94b5f9"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "7bceb3c995825206c3d244d74f9592d74c2843ef8e8bf2610d750450b114af8d"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "b78e4ac9c76589e1fbc22dc52f06dc1e1448267a3e6e3b4b2491b8fb21929db4"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
