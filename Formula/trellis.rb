class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.13.0/trellis-v0.13.0-macos-arm64.tar.gz"
      sha256 "2bc5e465dc785499a7952c129aa116c62741028746649e4ed0817d616bad4a68"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.13.0/trellis-v0.13.0-macos-x64.tar.gz"
      sha256 "035210b042907eb7a27eb2526057e8a300a9cc125717e1e3c0c40b299608b46c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.13.0/trellis-v0.13.0-linux-arm64.tar.gz"
      sha256 "6654616892e46e094391055b404f67a128145536a59e3e5f19a2c65d5cd86c12"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.13.0/trellis-v0.13.0-linux-x64.tar.gz"
      sha256 "cf7717921322d05e67864e855375c11e919c38857fff619be226da846daf5932"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
