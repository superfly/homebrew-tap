# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.527"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.527/flyctl_0.0.527_macOS_x86_64.tar.gz"
      sha256 "e7047b65e38df614334527a61442843e4655511c1565fbd02f34f976a3e9349a"

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
      url "https://github.com/superfly/flyctl/releases/download/v0.0.527/flyctl_0.0.527_macOS_arm64.tar.gz"
      sha256 "faace3722b9c2cb618a230f38932ac1e80eacabb9a74793c4c70b24dca9eb471"

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
      url "https://github.com/superfly/flyctl/releases/download/v0.0.527/flyctl_0.0.527_Linux_arm64.tar.gz"
      sha256 "943238f1d3e8494886f75b296a620837e4c13f89a81b643b8f2e8852a90bbc1c"

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
      url "https://github.com/superfly/flyctl/releases/download/v0.0.527/flyctl_0.0.527_Linux_x86_64.tar.gz"
      sha256 "6876030c31233eb39fda09f5c2d4aa4c872b265ef2ee5f5d5dfbcbef8ff9bcc8"

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
