class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.5/purple_0.1.5_darwin_amd64.tar.gz"
      sha256 "0ce0b6c451995c6a073821d91eff5fc656751f83727987ef138099fb4e27648b"
    else
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.5/purple_0.1.5_darwin_arm64.tar.gz"
      sha256 "e3212038013b21d7efb0cf2e4c9ab6b277a24cdd7d833756b317c0469cc2ba06"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
