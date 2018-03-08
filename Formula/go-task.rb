class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.0.0/task_darwin_amd64.tar.gz"
  version "2.0.0"
  sha256 "8fb3e8a5fcb7eda011239a37455a3a55e8aad51c3916ecd9b9e586474e3becfe"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
