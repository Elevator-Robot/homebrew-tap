class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.3/purple_0.1.3_darwin_amd64.tar.gz"
      sha256 "b62e66e25e58fec13002d6f9294cf5ffd0c4453b8f966cfd5bc22e2b362e2c59"
    else
      url "https://github.com/Elevator-Robot/homebrew-tap/releases/download/v0.1.3/purple_0.1.3_darwin_arm64.tar.gz"
      sha256 "d383d110c094efdb8c953cc723b224639fa01175a5c5727c32802768be0e9f41"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
