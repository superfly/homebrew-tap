# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.367"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.367/flyctl_0.0.367_macOS_arm64.tar.gz"
      sha256 "01922785d43d1ece3d8937362b04388bb47d35dfa7d89b534bf38a6a25685f9d"

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
      url "https://github.com/superfly/flyctl/releases/download/v0.0.367/flyctl_0.0.367_macOS_x86_64.tar.gz"
      sha256 "cee340c3350b54ab011ee460030cc1c153f75ed20370b9066e7c1f74c96da3a6"

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
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.367/flyctl_0.0.367_Linux_x86_64.tar.gz"
      sha256 "616e02de68a89cddf32fa9f2b6be0d002e2532d4912582f169e5870dcd1b6cde"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.367/flyctl_0.0.367_Linux_arm64.tar.gz"
      sha256 "d9e254468d70b5938b7871cf49810a5a0de29eaf3b48c3269d2fe33314c4a94d"

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
