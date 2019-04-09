class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://flyio-cli-assets.sfo2.digitaloceanspaces.com/tarballs/stable/fly-v0.49.1/fly-v0.49.1-darwin-x64.tar.gz"
  sha256 "40017fe4f5187f3ee4438ae0c161905c022752f2649eed6301351c6d8bf449dd"
  version "0.49.1"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end