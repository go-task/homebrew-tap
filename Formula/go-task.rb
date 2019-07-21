class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "2.5.2"

  if OS.mac?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_darwin_amd64.tar.gz"
    sha256 "a4ae00e255729aec842261f1dbaaa657d7efa0f97cafc2790d6770d2302cf2e8"
  elsif OS.linux?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_linux_amd64.tar.gz"
    sha256 "d97949bcd590eb01f77f8b10fdce8f5add40864d7a9f7a93bf3916198360734f"
  end

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
