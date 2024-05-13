# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.2.53"

  on_macos do
    on_intel do
      url "https://github.com/superfly/flyctl/releases/download/v0.2.53/flyctl_0.2.53_macOS_x86_64.tar.gz"
      sha256 "b74ccceeb42e9c6adc8ef43e267b8ea0f93c53988f3a0abb5003cd32eefce83c"

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
      url "https://github.com/superfly/flyctl/releases/download/v0.2.53/flyctl_0.2.53_macOS_arm64.tar.gz"
      sha256 "19fc2dc033c2a4e6602f399de0bcd8b78827d2bc7ae892f00f63882cb071325a"

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
        url "https://github.com/superfly/flyctl/releases/download/v0.2.53/flyctl_0.2.53_Linux_x86_64.tar.gz"
        sha256 "d5ea89e2f745bf3128a264da8fd1a692de12f0344e11bd7a2de44aada9826cd6"

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
        url "https://github.com/superfly/flyctl/releases/download/v0.2.53/flyctl_0.2.53_Linux_arm64.tar.gz"
        sha256 "864c69c46efc7fcc98a1c0d24c37c919aafc2d44d66274e8dee55bd6b407d32b"

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
