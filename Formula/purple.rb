class Purple < Formula
  desc "Lightweight ngrok-style reverse proxy tunnel client"
  homepage "https://github.com/Elevator-Robot/purple"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://raw.githubusercontent.com/Elevator-Robot/homebrew-tap/main/releases/purple_0.1.1_darwin_amd64.tar.gz"
      sha256 "e52874ce375856602def26fde162d744e13a3445b24729f8b535255758b5b277"
    else
      url "https://raw.githubusercontent.com/Elevator-Robot/homebrew-tap/main/releases/purple_0.1.1_darwin_arm64.tar.gz"
      sha256 "7d7ba12347088d1597e8d5acc1e609f7ab1c7412aa92397d6cf9c02720721cda"
    end
  end

  def install
    bin.install "purple"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/purple --version")
  end
end
