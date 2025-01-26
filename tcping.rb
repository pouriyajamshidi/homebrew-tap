HOMEBREW_CLI_VERSION='2.7.1'
class Tcping < Formula
  desc "Ping TCP ports. Inspired by Linux's ping utility. Written in Go"
  homepage "https://github.com/pouriyajamshidi/tcping"
  license "MIT"
  version "v#{HOMEBREW_CLI_VERSION}"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-darwin-arm64-static.tar.gz"
      sha256 "a99438cf274e4afcef98808821fadc6f24aea3dfbacc69beb4c0a195e210d327"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-darwin-amd64-static.tar.gz"
      sha256 "308ebe9b888b014bae486e82dbe63ad638baee3cc90db5a74767ba6a7cd9d54e"
    end

    def install
      cd buildpath do
        bin.install "tcping"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-linux-arm64-static.tar.gz"
      sha256 "a8a61af38a7ba9d0f361fc5cce496c37cdb70e92805d7a7f1ca9ff16b2c35450"
    else
      url "https://github.com/pouriyajamshidi/tcping/releases/download/v#{HOMEBREW_CLI_VERSION}/tcping-linux-amd64-static.tar.gz"
      sha256 "f160bc52c05460544334b70f56bb983e7800f18563bcc2dfaaad67c11506719e"
    end
  
    def install
      bin.install "tcping"
    end
  end

  test do
    system "false"
  end
end
