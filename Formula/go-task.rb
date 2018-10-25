class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.2.0/task_darwin_amd64.tar.gz"
  version "2.2.0"
  sha256 "47bce8798b2940b02b54f7806c1357719ed6cab066377f38f666a891158cdcda"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
