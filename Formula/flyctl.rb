# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.233"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.233/flyctl_0.0.233_macOS_x86_64.tar.gz"
      sha256 "cd1e0a15ffb825b4805e99f7514313445d43795362959119271b249090f1267f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.233/flyctl_0.0.233_macOS_arm64.tar.gz"
      sha256 "5ba901a89043d619ca5b01cb3ca6bddc2f53a02bfd5d2dad9baf56b28f7e6edb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.233/flyctl_0.0.233_Linux_x86_64.tar.gz"
      sha256 "22db359ae613ba28fb5482627672502080d52c59f971b22b9261072651a9f593"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.233/flyctl_0.0.233_Linux_arm64.tar.gz"
      sha256 "83292c13b3152ac60f6302fd8bb74f37519f847a5a4f36a950ebe0523ca700ae"
    end
  end

  def install
    system "pkill", "flyctl"
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
