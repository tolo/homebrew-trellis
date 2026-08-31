class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.11.0/trellis-v0.11.0-macos-arm64.tar.gz"
      sha256 "5ed7a858a46cf74725171f66aec045bfbb1c2feae904420c3dffec3474e39d64"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.11.0/trellis-v0.11.0-macos-x64.tar.gz"
      sha256 "2fadd2089d4e91ae8072acca3e610693e69af9f2ca8d8b8e363160cdd7675e20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.11.0/trellis-v0.11.0-linux-arm64.tar.gz"
      sha256 "19fd92caf10d3c2e981938ceaa8811f3afa1c560b404f63e24db4924318d04ad"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.11.0/trellis-v0.11.0-linux-x64.tar.gz"
      sha256 "74249529409e0f4e1dfd5f0b082a7a5f49a47d0a77163691510ea568f74f245f"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
