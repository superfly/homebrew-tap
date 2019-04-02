class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://fly.io/cli/target/channels/stable/fly-v0.48.0/fly-v0.48.0-darwin-x64.tar.gz"
  sha256 "31c2b9b9c94466c4b83cff57da43554c7451185d7c175e8b9c645b535199dc3a"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end