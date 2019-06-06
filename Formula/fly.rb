class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.54.0/fly-v0.54.0-darwin-x64.tar.gz"
  sha256 "58fe2e3f073aebac070d1edab4bcbfcef09e4bf8b9fa23438ed3955124b8c75a"
  version "0.54.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end