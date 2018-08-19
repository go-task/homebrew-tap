class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/v2.1.0/task_darwin_amd64.tar.gz"
  version "2.1.0"
  sha256 "a03791d2444621eb6985a60b954c235e7eb760f466045d321bee04487fe779f3"

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
