HOMEBREW_CLI_VERSION='2.4.0'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS_ARM.tar.gz"
      sha256 "ca99224925d9ec77cc5e157314ec3ee454e33ade9867e6b6d0925cea2568072f"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_MacOS.tar.gz"
      sha256 "6d87e841a5862f415049cd6ee9f4c793f6a7d6a45d888a09f0ef7fa9f18b7943"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping_Linux.tar.gz"
    sha256 "4fe818728f9ca8a8b4c9e5db66d415270f45672884a07cccd765db2b74c45130"
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
