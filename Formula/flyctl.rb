# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.2.59"

  on_macos do
    on_intel do
      url "https://github.com/superfly/flyctl/releases/download/v0.2.59/flyctl_0.2.59_macOS_x86_64.tar.gz"
      sha256 "35c51a53f9743a76963da5c4b58b26656af8b21e9ca22747edc3c038e21578fe"

      def install
        bin.install "flyctl"
        bin.install_symlink "flyctl" => "fly"

        bash_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "bash")
        (bash_completion/"flyctl").write bash_output
        zsh_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "zsh")
        (zsh_completion/"_flyctl").write zsh_output
        fish_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "fish")
        (fish_completion/"flyctl.fish").write fish_output
      end
    end
    on_arm do
      url "https://github.com/superfly/flyctl/releases/download/v0.2.59/flyctl_0.2.59_macOS_arm64.tar.gz"
      sha256 "7aa8b384d8941835a730e69dc70f42d81dd932328023d4baa4d8bac2966b5f0a"

      def install
        bin.install "flyctl"
        bin.install_symlink "flyctl" => "fly"

        bash_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "bash")
        (bash_completion/"flyctl").write bash_output
        zsh_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "zsh")
        (zsh_completion/"_flyctl").write zsh_output
        fish_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "fish")
        (fish_completion/"flyctl.fish").write fish_output
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/superfly/flyctl/releases/download/v0.2.59/flyctl_0.2.59_Linux_x86_64.tar.gz"
        sha256 "cfc3692d75797c6f74eff77b5514ac5300cd899f3b807b023ede38a7a907aab2"

        def install
          bin.install "flyctl"
          bin.install_symlink "flyctl" => "fly"

          bash_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "bash")
          (bash_completion/"flyctl").write bash_output
          zsh_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "zsh")
          (zsh_completion/"_flyctl").write zsh_output
          fish_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "fish")
          (fish_completion/"flyctl.fish").write fish_output
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/superfly/flyctl/releases/download/v0.2.59/flyctl_0.2.59_Linux_arm64.tar.gz"
        sha256 "a1b86752027ff206eae2165a0a4edbbbba53c759b5b0fcb7634c38ec216c4a18"

        def install
          bin.install "flyctl"
          bin.install_symlink "flyctl" => "fly"

          bash_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "bash")
          (bash_completion/"flyctl").write bash_output
          zsh_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "zsh")
          (zsh_completion/"_flyctl").write zsh_output
          fish_output = Utils.safe_popen_read("#{bin}/flyctl", "completion", "fish")
          (fish_completion/"flyctl.fish").write fish_output
        end
      end
    end
  end

  test do
    system "#{bin}/flyctl version"
  end
end
