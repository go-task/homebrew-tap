class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  url "https://github.com/go-task/task/releases/download/v2.5.1/task_darwin_amd64.tar.gz"
  version "2.5.1"
  sha256 "f78ca4880f38da66396f3239fbae8a3aa256f13e2526ff89f19daea985c50670"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
