class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.51.1/fly-v0.51.1-darwin-x64.tar.gz"
  sha256 "5c64ba70244b7f22238e4afce5bace05f4a241c65ddcb7c1f653d65f4dd7ffc3"
  version "0.51.1"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end