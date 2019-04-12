class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://flyio-cli-assets.sfo2.digitaloceanspaces.com/tarballs/stable/fly-v0.51.0/fly-v0.51.0-darwin-x64.tar.gz"
  sha256 "d5d9b1037a446d70213e02ba438e5f4aaa37b8bdc9535ba6bca8dc276155d57d"
  version "0.51.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end