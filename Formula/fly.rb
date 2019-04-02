class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://fly.io/cli/target/channels/stable/fly-v0.48.1/fly-v0.48.1-darwin-x64.tar.gz"
  sha256 "6a58681a7d75dae60883d2b073557a21e3ec6e6015949f5cebb71dbd79d6c551"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end