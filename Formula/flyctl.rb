# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.252"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.252/flyctl_0.0.252_macOS_arm64.tar.gz"
      sha256 "882bef48679a1ed149e1c519bbe4d5c93a1691c240c7c2bb0c7630e01ab1d8b3"

      def install
        bin.install "flyctl"
        bin.install_symlink "flyctl" => "fly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.252/flyctl_0.0.252_macOS_x86_64.tar.gz"
      sha256 "ad05c87fadbcc564e3b2037fe73137f9997896bb71cf8dead35c722600770128"

      def install
        bin.install "flyctl"
        bin.install_symlink "flyctl" => "fly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.252/flyctl_0.0.252_Linux_arm64.tar.gz"
      sha256 "650631f3f63a0849852443e8568a29ef68db0b36753622ce84ae198919e72720"

      def install
        bin.install "flyctl"
        bin.install_symlink "flyctl" => "fly"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.252/flyctl_0.0.252_Linux_x86_64.tar.gz"
      sha256 "e15fe4444d2d1cda6d3b043c7e10dab22f215c7aa04b5752afbc37340e196538"

      def install
        bin.install "flyctl"
        bin.install_symlink "flyctl" => "fly"
      end
    end
  end

  test do
    system "#{bin}/flyctl version"
  end
end
