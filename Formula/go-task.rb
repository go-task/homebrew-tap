class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.2.2"

  if OS.mac?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_darwin_amd64.tar.gz"
    sha256 "809477dfac3fed375023ba6cf0aa605b788e4b49fab8b2384fcdc57d7c51fead"
  elsif OS.linux?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_linux_amd64.tar.gz"
    sha256 "bbe3f2214eaf0611aec9b244c060e1046c2a19f8bc1c88aabce7e22750e11168"
  end

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
