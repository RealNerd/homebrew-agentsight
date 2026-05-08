class Agentsight < Formula
  desc "Token attribution and session intelligence for Claude Code"
  homepage "https://github.com/RealNerd/agentsight"
  url "https://github.com/RealNerd/agentsight/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "5db14f0fd05165d5e700830ee3747bc629a1a031d4118cd399b0183a4291c42c"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "agentsight", shell_output("#{bin}/agentsight --version")
  end
end
