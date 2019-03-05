class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  url "https://github.com/go-task/task/releases/download/v2.4.0/task_darwin_amd64.tar.gz"
  version "2.4.0"
  sha256 "c4b633e8d343314841c663ff350b2766695f05038a01429860baefef6dba3a51"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
