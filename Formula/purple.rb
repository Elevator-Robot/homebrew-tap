class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://raw.githubusercontent.com/Elevator-Robot/homebrew-tap/main/releases/purple_0.1.1_darwin_amd64.tar.gz"
      sha256 "e1ad7f4a02a6ba285a06334eb94281a2449634cecae345e005bf96b1773b750e"
    else
      url "https://raw.githubusercontent.com/Elevator-Robot/homebrew-tap/main/releases/purple_0.1.1_darwin_arm64.tar.gz"
      sha256 "b36597c584444f3981edf031ec4f088fa19659beff4ec2797a19495157b07a82"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
