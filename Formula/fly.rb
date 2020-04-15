class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.55.1/fly-v0.55.1-darwin-x64.tar.gz"
  sha256 "ee60be7894c7f00ad67e7a47ba75ae04432bd06393eba5635743f65e4327ab2d"
  version "0.55.1"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end
