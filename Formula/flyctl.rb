# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.1.67"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.1.67/flyctl_0.1.67_macOS_x86_64.tar.gz"
      sha256 "346c023be9cbadd85fb1a1de94509b6b2c6b7ad201fd26289c275f5a8de7bf44"

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
    if Hardware::CPU.arm?
      url "https://github.com/superfly/flyctl/releases/download/v0.1.67/flyctl_0.1.67_macOS_arm64.tar.gz"
      sha256 "99597cd89cb4bc270746ff02ca0bf2dc46bc2c668fbe0f18fa5a33705398dd9a"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superfly/flyctl/releases/download/v0.1.67/flyctl_0.1.67_Linux_arm64.tar.gz"
      sha256 "2acb462719b2ec08dbc320e41b5a5ea05c4a14619802d408290959aaf99a94dd"

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
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.1.67/flyctl_0.1.67_Linux_x86_64.tar.gz"
      sha256 "bcc6d70fcd9ae9dfc44a17ea4ba519b67623f2409db254b321ed33800f744e13"

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

  test do
    system "#{bin}/flyctl version"
  end
end
