class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.2.1/task_darwin_amd64.tar.gz"
  version "2.2.1"
  sha256 "7c1980cc3b1fd4e721d651bba5477d43db65873c6282c4eb7dc38d12bdb30a93"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
