class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.54.4/fly-v0.54.4-darwin-x64.tar.gz"
  sha256 "56c666fd38c8013cb4ecc35c031eb77a850c040b60e7b6fc654748c7fb3e63ca"
  version "0.54.4"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end