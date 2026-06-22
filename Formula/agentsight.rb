class Agentsight < Formula
  desc "Token attribution and session intelligence for Claude Code"
  homepage "https://github.com/RealNerd/agentsight"
  url "https://github.com/RealNerd/agentsight/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4de27f6039f2be4dd616500a9a0ce09dfb5d6da5cb706aacfe2eb37a219226c2"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agentsight", shell_output("#{bin}/agentsight --version")
  end
end
