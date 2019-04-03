class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://flyio-cli-assets.sfo2.digitaloceanspaces.com/tarballs/stable/fly-v0.48.1/fly-v0.48.1-darwin-x64.tar.gz"
  sha256 "1fe510aacfae90cc131cae7654cffeec23968b9f9310d50f6b81e6e25e068665"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end