class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.4.3"

  if OS.mac?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_darwin_amd64.tar.gz"
    sha256 "a82117a3b560f35be9d5d34a1eb6707f1cdde1e2ab9ed22cd5a72bd97682a83e"
  elsif OS.linux?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_linux_amd64.tar.gz"
    sha256 "1492e0d185eb7e8547136c8813e51189f59c1d9e21e5395ede9b9a40d55c796e"
  end

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
