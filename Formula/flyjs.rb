class Flyjs < Formula
  desc "flyjs cli"
  homepage "https://fly.io"
  url "https://get.fly.io/tarballs/stable/fly-v0.56.1/fly-v0.56.1-darwin-x64.tar.gz"
  sha256 "59323b683445f319e1212017d4507f9bc27abd4a9e4ff07f6bb27b274ffdc6e3"
  version "0.56.1"

  def install
    inreplace "bin/flyjs", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/flyjs"
  end

  test do
    system bin/"flyjs", "version"
  end
end
