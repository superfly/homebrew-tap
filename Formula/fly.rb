class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.55.0/fly-v0.55.0-darwin-x64.tar.gz"
  sha256 "6a4591aa5a52c142d8acd77c51c39fce6d6a25c3b0e9f0499094ef146d496f71"
  version "0.55.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end
