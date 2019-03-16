class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  url "https://github.com/go-task/task/releases/download/v2.5.0/task_darwin_amd64.tar.gz"
  version "2.5.0"
  sha256 "4b06521cc1c41f766af1006664fac1cc870e5c48a4a64fa2f3727e3a343e8456"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
