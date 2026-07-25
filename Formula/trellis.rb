class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.10.0/trellis-v0.10.0-macos-arm64.tar.gz"
      sha256 "801d1a2213eb62526014a111ba992dd1f9f3650cc9307f391f28dd5dc0d2402b"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.10.0/trellis-v0.10.0-macos-x64.tar.gz"
      sha256 "35b120cc44a22cfa379af45e6472762baa12137e2d5256650e6ed43f55239991"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.10.0/trellis-v0.10.0-linux-arm64.tar.gz"
      sha256 "4e64d7d36868d98ce0439e90bdc6761873f1ec34cacdee643557567a020b7483"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.10.0/trellis-v0.10.0-linux-x64.tar.gz"
      sha256 "b510155444a70b85ee450546b7a2d883369e13549c52326a9a9df6e1725e9460"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
