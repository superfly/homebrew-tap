class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.51.1/fly-v0.51.1-darwin-x64.tar.gz"
  sha256 "f6d7a431fe18c5344540e83c740f5a733b3311f8fecec7598f78188c751c7ecb"
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