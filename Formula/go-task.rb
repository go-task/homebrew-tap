class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.1.1/task_darwin_amd64.tar.gz"
  version "2.1.1"
  sha256 "8a6291275136d819bf1413530f49f82fc502adf79853e48a47dbc045e00b4100"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
