class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.4/purple_0.1.4_darwin_amd64.tar.gz"
      sha256 "266c80093c3ccc748f5db8ee803861fd852a1998890cb895086f25db461c8ef3"
    else
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.4/purple_0.1.4_darwin_arm64.tar.gz"
      sha256 "e215a23617c27bb42f617bdb28683919501aa4072928e9594daf358d8ca81bae"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
