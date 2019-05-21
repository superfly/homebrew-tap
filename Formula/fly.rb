class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.54.0/fly-v0.54.0-darwin-x64.tar.gz"
  sha256 "2cf1a4a6a5f0f2abac2fcdc3c6238be177e1f6195997275f18bc11255e7434ea"
  version "0.54.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end