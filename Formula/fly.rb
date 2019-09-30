class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.54.3/fly-v0.54.3-darwin-x64.tar.gz"
  sha256 "cbcbd5e2f59c33169ccda4b242ff8b6b05af968efb9e5c53f08c2a280d7ed5a8"
  version "0.54.3"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end