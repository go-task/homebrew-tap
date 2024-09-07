# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.39.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/go-task/task/releases/download/v3.39.0/task_darwin_amd64.tar.gz"
      sha256 "226d741fe52d750a41eee838e49f2bd3b97f5e7f17cb327ef133854f2aeef02c"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    on_arm do
      url "https://github.com/go-task/task/releases/download/v3.39.0/task_darwin_arm64.tar.gz"
      sha256 "68b944be94a8344589c5dc73112a8680af3d6ff61fd37351b78601a4eeccd1e1"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-task/task/releases/download/v3.39.0/task_linux_amd64.tar.gz"
        sha256 "5be311826daf2639023bd1998d835d519c778357885df0f8115142ec519af174"

        def install
          bin.install "task"
          bash_completion.install "completion/bash/task.bash" => "task"
          zsh_completion.install "completion/zsh/_task" => "_task"
          fish_completion.install "completion/fish/task.fish"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/go-task/task/releases/download/v3.39.0/task_linux_arm.tar.gz"
        sha256 "6b3abb675af66608ad562311c50bc40232df804ec065abaed556962f4e9b226a"

        def install
          bin.install "task"
          bash_completion.install "completion/bash/task.bash" => "task"
          zsh_completion.install "completion/zsh/_task" => "_task"
          fish_completion.install "completion/fish/task.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-task/task/releases/download/v3.39.0/task_linux_arm64.tar.gz"
        sha256 "18be93736cb2ca3c38d3f9a145bd1bbf63da1d739313c6298d1361454f1f98f1"

        def install
          bin.install "task"
          bash_completion.install "completion/bash/task.bash" => "task"
          zsh_completion.install "completion/zsh/_task" => "_task"
          fish_completion.install "completion/fish/task.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/task", "--help"
  end
end
