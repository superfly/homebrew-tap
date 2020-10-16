class Flyjs < Formula
  desc "flyjs cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.56.0/fly-v0.56.0-darwin-x64.tar.gz"
  sha256 "c07ee5f33c0611e935b832871e9aeb230200367cdb4be2643969e3f7e0deccec"
  version "0.56.0"

  def install
    inreplace "bin/flyjs", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/flyjs"
  end

  test do
    system bin/"flyjs", "version"
  end
end
