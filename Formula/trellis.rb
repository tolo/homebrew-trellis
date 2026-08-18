class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.10.1/trellis-v0.10.1-macos-arm64.tar.gz"
      sha256 "6fa7bceec2670932062361061e307bad95b3501e8461652734e666f721d7ca59"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.10.1/trellis-v0.10.1-macos-x64.tar.gz"
      sha256 "dc512b7103c1a8fe88f94e4e5075cf18e22c9e8c86e2d6413753cc90a1a3bfc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.10.1/trellis-v0.10.1-linux-arm64.tar.gz"
      sha256 "a1d03fe971eefb6bbbcb53f343d0339f200511a0fddb8cdc8fd1974b0946ae79"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.10.1/trellis-v0.10.1-linux-x64.tar.gz"
      sha256 "eb3f46497fcbffce328bc0dbe72389c1da5e517c51531480d8d02c0ab4eed129"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
