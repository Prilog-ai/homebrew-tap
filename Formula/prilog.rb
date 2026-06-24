class Prilog < Formula
  desc "CLI for connecting repositories to Prilog"
  homepage "https://github.com/Prilog-ai/prilog-cli"
  url "https://github.com/Prilog-ai/prilog-cli.git",
      tag:      "v0.1.1",
      revision: "1878e5f946f80833b81202a38dfabb1544444589"
  license "Apache-2.0"
  head "https://github.com/Prilog-ai/prilog-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(
      ldflags: "-s -w -X main.version=#{version}",
    )
  end

  test do
    assert_match "prilog #{version}", shell_output("#{bin}/prilog version")
  end
end
