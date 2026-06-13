class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/purple/releases/download/v0.1.0/purple_0.1.0_darwin_amd64.tar.gz"
      sha256 "90c343f5e46ee875e018575f23b7bf61778195de26b675f0d476f80bbc5e7d47"
    else
      url "https://github.com/Elevator-Robot/purple/releases/download/v0.1.0/purple_0.1.0_darwin_arm64.tar.gz"
      sha256 "b068607d3bd0f94adaff1b4d28cf3820a182aa6fc287269b7db730a25c89120e"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
