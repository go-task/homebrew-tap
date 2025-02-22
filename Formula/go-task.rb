# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-task/task/releases/download/v3.41.0/task_darwin_amd64.tar.gz"
      sha256 "a328b3cd98dbbae5844dd336c6ea8a52a7704d626089b6bbd92c163325a93885"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-task/task/releases/download/v3.41.0/task_darwin_arm64.tar.gz"
      sha256 "78083ab7b4c99455448d3dd0dcce2be857789ae80c176350804305021aa7f582"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-task/task/releases/download/v3.41.0/task_linux_amd64.tar.gz"
        sha256 "0a2595f7fa3c15a62f8d0c244121a4977018b3bfdec7c1542ac2a8cf079978b8"

        def install
          bin.install "task"
          bash_completion.install "completion/bash/task.bash" => "task"
          zsh_completion.install "completion/zsh/_task" => "_task"
          fish_completion.install "completion/fish/task.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/go-task/task/releases/download/v3.41.0/task_linux_arm.tar.gz"
        sha256 "77ede7694c569162fd1974e70b8e0970663096adcaec3a54b7b671cc6300cff0"

        def install
          bin.install "task"
          bash_completion.install "completion/bash/task.bash" => "task"
          zsh_completion.install "completion/zsh/_task" => "_task"
          fish_completion.install "completion/fish/task.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/go-task/task/releases/download/v3.41.0/task_linux_arm64.tar.gz"
        sha256 "dbe5b4aa21bdc7f00b232ebec5b2ffc8f6d1fc5bfb342597730c8aaca1217296"

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
