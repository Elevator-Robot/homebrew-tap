class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v1.0.2/purple_1.0.2_darwin_amd64.tar.gz"
      sha256 "62fa75f1c04e9ced783669f4ae19365d31b7b01e96761ae1d12d4cfb9700e703"
    else
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v1.0.2/purple_1.0.2_darwin_arm64.tar.gz"
      sha256 "452ab8ce3f1c3dfad226705b32a6b70194675896434a1d475a3f4f2f9dafe508"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
