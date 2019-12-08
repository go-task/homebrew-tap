class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "2.8.0"

  if OS.mac?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_darwin_amd64.tar.gz"
    sha256 "321813f5f2f1a6ff5f2afd78d6f9a6b32db4d3516632ae50ba1dc923058f9261"
  elsif OS.linux?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_linux_amd64.tar.gz"
    sha256 "4ea203e79f9ba0490ff8e073a028cb1820412bc083322db4349d7d5e050760a2"
  end

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
