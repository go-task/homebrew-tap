class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.0.1/task_darwin_amd64.tar.gz"
  version "2.0.1"
  sha256 "b047c31bd1523ab6c9302644f8e7c1f8a1e04b4d4bbe0ba1ed86a8b3f72a9390"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
