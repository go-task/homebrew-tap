class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.0.3/task_darwin_amd64.tar.gz"
  version "2.0.3"
  sha256 "5eb4ef667b1fb769f6625c98c8ca97eab450afa5869c5c80beb2f8dbe09c9b41"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
