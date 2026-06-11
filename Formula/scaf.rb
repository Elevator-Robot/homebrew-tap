class Scaf < Formula
  desc "CLI tool that clones and syncs git repos defined in a scaf.yml file"
  homepage "https://github.com/Elevator-Robot/scaf"
  url "https://github.com/Elevator-Robot/scaf/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.version=#{version}", "-o", bin/"scaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scaf --version")
  end
end
