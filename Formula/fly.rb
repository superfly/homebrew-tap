class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.52.0/fly-v0.52.0-darwin-x64.tar.gz"
  sha256 "e5ec6fdeb1ca244b5b06255ca4a4c51b24d69fe2ce3486a53794c3dc8fcc42ee"
  version "0.52.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end