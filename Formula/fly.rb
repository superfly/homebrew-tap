class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.51.2/fly-v0.51.2-darwin-x64.tar.gz"
  sha256 "4d365d3a3eb39c81b7678c1d43df3e06c06b806d92b76a82cf8247430d42b8af"
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