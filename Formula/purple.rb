class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.2/purple_0.1.2_darwin_amd64.tar.gz"
      sha256 "975dfdcb5e40e521b0de6732ef770b5600ab33ae8fe276f7bae743ff01dae470"
    else
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.2/purple_0.1.2_darwin_arm64.tar.gz"
      sha256 "221b8d1390680f74e6f6902f3734e33436de389cfa2e3fb7da8d4549a8b87f62"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
