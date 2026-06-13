class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Elevator-Robot/purple/releases/download/v0.1.1/purple_0.1.1_darwin_amd64.tar.gz"
      sha256 "5740c460d52ce5b490a84e1fbbf1f3860621bb1cc6e9382b592a6a02c01696a3"
    else
      url "https://github.com/Elevator-Robot/purple/releases/download/v0.1.1/purple_0.1.1_darwin_arm64.tar.gz"
      sha256 "9c727677ba32eb96a00ed3fbef1eeabbe7ae18a9277c0aed9a7c886339a6fda2"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
