class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  url "https://github.com/Elevator-Robot/purple/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "626c7c545e7b7090d00a3b54625cfe35ea03a68b4adc4359d338f88c79a446ef"
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
