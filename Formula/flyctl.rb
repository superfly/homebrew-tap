# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.246"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.246/flyctl_0.0.246_macOS_arm64.tar.gz"
      sha256 "ff42e1d7e8d1c873daec8aad23ece855599b6f77cfa2ab03db18865e1b55f4a3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.246/flyctl_0.0.246_macOS_x86_64.tar.gz"
      sha256 "07ec4507beac246d2c1971215c709b4ceab5d23aaefa627e3039c0105f897b4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.246/flyctl_0.0.246_Linux_arm64.tar.gz"
      sha256 "765e0c078f5aa72a55bded43cd379cba80ad90fc180faf0113f1c5f14d1f1a5f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.246/flyctl_0.0.246_Linux_x86_64.tar.gz"
      sha256 "f1b91fae851fb529b25ba2d465f1362061d84ebb85350599b1ae85cd7ca183b7"
    end
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
