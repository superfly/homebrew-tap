class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get-flyio.edgeapp.net/cli/target/channels/pre/fly-v0.48.0-pre.5/fly-v0.48.0-pre.5-darwin-x64.tar.gz"
  sha256 "3d950fa8597b73ea015fbccb311861c1fffff48a6397cb5a827512c8a1d2b4fd"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end