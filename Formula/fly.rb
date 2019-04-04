class Fly < Formula
  desc "fly cli"
  homepage "https://fly.io"
  url "https://flyio-cli-assets.sfo2.digitaloceanspaces.com/tarballs/stable/fly-v0.49.0/fly-v0.49.0-darwin-x64.tar.gz"
  sha256 "fa2a0091e8ba4fabcc6143fb84b69a4ec439a424572113a670f490c5a8ea5a7b"
  version "0.49.0"

  def install
    inreplace "bin/fly", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/fly"
  end

  test do
    system bin/"fly", "version"
  end
end