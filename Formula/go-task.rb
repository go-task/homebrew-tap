class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v1.4.4/task_darwin_amd64.tar.gz"
  version "1.4.4"
  sha256 "4534c408124c13746ed70cdfb74e4853bef24705f5e9b81149999e4f4a46be46"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
