# This formula is automatically updated by GoReleaser on new releases.
# Manual installs: download from https://github.com/TheFeedFactory/tff-cli/releases

class Tff < Formula
  desc "Command-line interface for the FeedFactory API"
  homepage "https://github.com/TheFeedFactory/tff-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheFeedFactory/tff-cli/releases/latest/download/tff-cli_darwin_arm64.tar.gz"
    else
      url "https://github.com/TheFeedFactory/tff-cli/releases/latest/download/tff-cli_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheFeedFactory/tff-cli/releases/latest/download/tff-cli_linux_arm64.tar.gz"
    else
      url "https://github.com/TheFeedFactory/tff-cli/releases/latest/download/tff-cli_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "tff"
  end

  test do
    system "#{bin}/tff", "--version"
  end
end
