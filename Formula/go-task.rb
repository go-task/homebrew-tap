class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "3.7.0"

  if OS.mac?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_darwin_amd64.tar.gz"
    sha256 "6c03a1110561d2954e3be56ff012c470612fe2f2fec7a86db3782897ed8be434"
  elsif OS.linux?
    url "https://github.com/go-task/task/releases/download/v#{version}/task_linux_amd64.tar.gz"
    sha256 "3d3a2651fc28344dc0aea4291a72787a4b8bd172df95d59baa7f14e5bd0f7b2f"
  end

  def install
    bin.install "task"

    completions = {
      bash: "completion/bash/task.bash",
      zsh: "completion/zsh/_task",
      fish: "completion/fish/task.fish",
    }

    bash_completion.install completions[:bash] => "task" # if File.exist?(completions["bash"])
    zsh_completion.install completions[:zsh] => "_task" # if File.exist?(completions["zsh"])
    fish_completion.install completions[:fish] => "task.fish" # if File.exist?(completions["fish"])
  end

  test do
    system "#{bin}/task", "--help"
  end
end
