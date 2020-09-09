class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.56.0/fly-v0.56.0-darwin-x64.tar.gz"
  sha256 "ad07102905718159049085de7cbf341a4c6bd67eee68cd46bc7f35d1efaec66c"
  version "0.56.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end
