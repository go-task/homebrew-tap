class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.3.0"

  if OS.mac?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_darwin_amd64.tar.gz"
    sha256 "0e18ae0b4e7b5a9e510cc860f99748e178aa621619e28600d6e597b240a8ffe6"
  elsif OS.linux?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_linux_amd64.tar.gz"
    sha256 "41fde22b414806ca26fbd023dce7a296ee03e2c393f6f9516dc13b5f2f4254c1"
  end

  def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
