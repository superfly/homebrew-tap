class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.55.4/fly-v0.55.4-darwin-x64.tar.gz"
  sha256 "e250343c2073ace7621a6d08132679a3733d225543a682e4013b598b7fb836f0"
  version "0.55.4"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end
