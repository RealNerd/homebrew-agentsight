class Agentsight < Formula
  desc "Token attribution and session intelligence for Claude Code"
  homepage "https://github.com/RealNerd/agentsight"
  url "https://github.com/RealNerd/agentsight/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b21829b566fb73c46e1c9cf1a83e65af4163b491235134aab892a1d59746273d"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agentsight", shell_output("#{bin}/agentsight --version")
  end
end
