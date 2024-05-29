# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.2.62"

  on_macos do
    on_intel do
      url "https://github.com/superfly/flyctl/releases/download/v0.2.62/flyctl_0.2.62_macOS_x86_64.tar.gz"
      sha256 "faf271c7354820a9ff5f40e3887d6d4254e60d54a8dcdc9793fc4bf2b701929e"

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
      url "https://github.com/superfly/flyctl/releases/download/v0.2.62/flyctl_0.2.62_macOS_arm64.tar.gz"
      sha256 "144e298d5bd35cdde2c2c44135d961b721247619e8bbdedcf060beb046f8faae"

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
        url "https://github.com/superfly/flyctl/releases/download/v0.2.62/flyctl_0.2.62_Linux_x86_64.tar.gz"
        sha256 "bdb3ecf188ccff25cd36853bc98674c031612a2ef04da14a1760840e6fb16062"

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
        url "https://github.com/superfly/flyctl/releases/download/v0.2.62/flyctl_0.2.62_Linux_arm64.tar.gz"
        sha256 "59b4597737dc9bc1bd5572f830d06c7c74697738f36a23acf2b56edf7484e2c8"

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
