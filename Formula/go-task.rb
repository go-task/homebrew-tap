# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-task/task/releases/download/v3.36.0/task_darwin_amd64.tar.gz"
      sha256 "f604aacb66bf5fe603fd080dbf444af9c2db223ebdcba8f8eb1c5f9fe536a9d0"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-task/task/releases/download/v3.36.0/task_darwin_arm64.tar.gz"
      sha256 "0d243efb855a666e92f42f24f938def024d78bc06447e5e3737b7ff96193b7c0"

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
      url "https://github.com/go-task/task/releases/download/v3.36.0/task_linux_amd64.tar.gz"
      sha256 "e2b1d50129db500746e1ed35a4e43f9bebc1ae5849d87b2d12e6a98512eae56f"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/go-task/task/releases/download/v3.36.0/task_linux_arm.tar.gz"
      sha256 "01f6d4188ac2dba8e0ebe72a640faf608df6654f08edf3377d08cec129f998e0"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-task/task/releases/download/v3.36.0/task_linux_arm64.tar.gz"
      sha256 "d66b784640e2aad48a20b3b9cf09cc9b590d59d6be34b41133cc4ea8e66778cb"

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
