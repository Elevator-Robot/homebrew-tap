class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  url "https://github.com/Elevator-Robot/purple/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "go" => :build

  def install
    cd("proxy/cmd/purple") do
      system "go", "build", "-ldflags", "-X main.version=#{version}", "-o", bin/"purple"
    end
  end

  test do
    assert_match "purple", shell_output("#{bin}/purple --help 2>&1")
  end
end
