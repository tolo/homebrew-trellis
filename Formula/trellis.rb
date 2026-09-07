class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.11.1/trellis-v0.11.1-macos-arm64.tar.gz"
      sha256 "f04616ea84c895e8af78cee9e966874b730588e8bed52f059c5e509467e66756"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.11.1/trellis-v0.11.1-macos-x64.tar.gz"
      sha256 "20a44c32dfa5e316e77aeeed69214778983ff141fac331d16a5390985b87ad42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.11.1/trellis-v0.11.1-linux-arm64.tar.gz"
      sha256 "1f800a8524b7868e448ecf48271986c85c0c0b28eed7406e734e2d515819e28d"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.11.1/trellis-v0.11.1-linux-x64.tar.gz"
      sha256 "58a4a663d22459162763270f7268f5d6af09bd4d21b7fa73b7e0dcf71f92ac9d"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
