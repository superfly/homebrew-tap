class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.51.2/fly-v0.51.2-darwin-x64.tar.gz"
  sha256 "afe6dabe7dba1a8b9661050910d66d92d35268d57541daa49d6d8e88fb4c15b6"
  version "0.51.2"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end