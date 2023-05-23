# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-task/task/releases/download/v3.25.0/task_darwin_arm64.tar.gz"
      sha256 "b6bd2420ef872d2a977b60af986418d0d474db4a82f49afc58a7d9c7958e0337"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-task/task/releases/download/v3.25.0/task_darwin_amd64.tar.gz"
      sha256 "59d1ac7bea7c7ab8f30e9f3dea18ead13f53366b9d906242533632b08f37d86d"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-task/task/releases/download/v3.25.0/task_linux_arm64.tar.gz"
      sha256 "708db601e8ef20de7aa4bcf068dd1b602a8aad87a9feb8f8abb5df2d2ca558bc"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/go-task/task/releases/download/v3.25.0/task_linux_arm.tar.gz"
      sha256 "650535ad58e540d0a21055a8d05355384f480abf6104beded0e9dc595822efb7"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-task/task/releases/download/v3.25.0/task_linux_amd64.tar.gz"
      sha256 "ebdd759e6ad8a09a21378764587ae8adbf0088f2aedfa6072f6df0fde71d17fd"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  test do
    system "#{bin}/task", "--help"
  end
end
