class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.52.0/fly-v0.52.0-darwin-x64.tar.gz"
  sha256 "361f156c8dbe957cee5f4010e05eb2bed53ec8c8fc3cddbd5402ba393496115d"
  version "0.52.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end