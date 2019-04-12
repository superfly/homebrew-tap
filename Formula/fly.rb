class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.51.1/fly-v0.51.1-darwin-x64.tar.gz"
  sha256 "1c1ffe6bb41a1a65d9b2eb42ac79bd730f7bdff5eecd8ffff1f3f3a440a96fec"
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