class Scaf < Formula
  desc "CLI tool that clones and syncs git repos defined in a scaf.yml file"
  homepage "https://github.com/Elevator-Robot/scaf"
  url "https://github.com/Elevator-Robot/scaf/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a8a1bbc6df5cb4d2e15332cdc13538472794547a354a3caaf99476314271c2b1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.version=#{version}", "-o", bin/"scaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scaf --version")
  end
end
