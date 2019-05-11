class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  url "https://github.com/go-task/task/releases/download/v2.5.2/task_darwin_amd64.tar.gz"
  version "2.5.2"
  sha256 "a4ae00e255729aec842261f1dbaaa657d7efa0f97cafc2790d6770d2302cf2e8"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
