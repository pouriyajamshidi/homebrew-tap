HOMEBREW_CLI_VERSION='1.20.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "6f348f5965f1d56970215563d59c936307d283489bf12b1ee7c19ff19d15fe5a"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "b5455471717e7b1b5477808276b03b093b80bbb24aae03dbf08a71e9c4c31f5b"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "6ae0a1bdcb363fb175d0e92b0e5bee43781e5e28a09d10ddce62ab781f4c249e"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
