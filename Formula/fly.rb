class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://fly.io/cli/target/channels/stable/fly-v0.48.0/fly-v0.48.0-darwin-x64.tar.gz"
  sha256 "30442c70340e038c28ab21a74d80207e1432711d24a05bc5a4b9b94aec4311c8"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end