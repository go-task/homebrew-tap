class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.3.0/task_darwin_amd64.tar.gz"
  version "2.3.0"
  sha256 "075021b40c9edf7231c3013d0ab46e68bd039cd44b6c1e82061b5544eb06cdf9"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
