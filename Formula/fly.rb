class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.55.4/fly-v0.55.4-darwin-x64.tar.gz"
  sha256 "529bd0d39bc6646606f17ca4c628a903115b334bcd70ee2f4f2058d3d4ee3c56"
  version "0.55.4"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end
