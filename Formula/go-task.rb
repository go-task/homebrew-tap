class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.0.2/task_darwin_amd64.tar.gz"
  version "2.0.2"
  sha256 "d000e452359c904982a2bb3c19323e124a10ed0c057144ba0e5e38f9ba2c3d3f"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
