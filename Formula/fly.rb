class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.55.7/fly-v0.55.7-darwin-x64.tar.gz"
  sha256 "588cb92893ecfda9e8233c54467edc8dbffc343035a6ec5b7bc35832c2f960d1"
  version "0.55.7"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end
