class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.53.1/fly-v0.53.1-darwin-x64.tar.gz"
  sha256 "1aecf6f5153eb7b335ef5388b3c048bf97eef2834892a17cad3906b32ef44c01"
  version "0.53.1"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end