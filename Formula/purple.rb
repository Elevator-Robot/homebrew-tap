class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.1/purple_0.1.1_darwin_amd64.tar.gz"
      sha256 "b4487f12f8bf0a7e79daeb7dfc71fde369bf39ba75254ee2430e2b813c6353a7"
    else
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.1/purple_0.1.1_darwin_arm64.tar.gz"
      sha256 "99cd60a80deb1c95992dfea18065cb65a064fd5aa52d16525732f19644fa9a75"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
