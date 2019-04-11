class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://flyio-cli-assets.sfo2.digitaloceanspaces.com/tarballs/stable/fly-v0.50.0/fly-v0.50.0-darwin-x64.tar.gz"
  sha256 "829767a60a5ca85835c306488c3df46951b320110a658c22ff123a3fa6864d34"
  version "0.50.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end