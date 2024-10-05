HOMEBREW_CLI_VERSION='2.6.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "71ea98256cabf5b6dfd28f53e8d05a013ade07de4128844358791ec3537722d2"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "3be78c490b228a41386724d2abb2a95c6313443a28ec90bbb856d22003bf72a9"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "6f46820e6e683707c20769a34f470b02dbc8d31e6610f5d55f2491248dff8e00"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
