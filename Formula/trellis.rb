class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.10.2/trellis-v0.10.2-macos-arm64.tar.gz"
      sha256 "970b7e9823cd6dfcf5f7b79ba2668fdcae6f94666b41feda511006f9b1ecd99d"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.10.2/trellis-v0.10.2-macos-x64.tar.gz"
      sha256 "6e7fca263eeecfada8f618e515023fcffbed17f1ecf82e3a26a12cb45a45e38d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.10.2/trellis-v0.10.2-linux-arm64.tar.gz"
      sha256 "b5ba20c734488cd23185251985fb26500b7d4401a0d730fe627241be39d5af14"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.10.2/trellis-v0.10.2-linux-x64.tar.gz"
      sha256 "f89a1ff0278fdaf99407bab8189c83b73bea8c143673e7f6f6c76f71c0a08948"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
