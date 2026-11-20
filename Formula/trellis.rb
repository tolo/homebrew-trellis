class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.14.0"
  license "MIT"

  # Releases carry no Intel Mac archive, so Homebrew refuses an Intel Mac by name.
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/tolo/trellis/releases/download/v0.14.0/trellis-v0.14.0-macos-arm64.tar.gz"
    sha256 "8861ba83ab0b59e3806fa75145c98d8811ffa02523e3557332e82a82eff7caa7"
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.14.0/trellis-v0.14.0-linux-arm64.tar.gz"
      sha256 "283e9900901d7790c7f4df921237df4fb94c4a7b530489216db0115a81d8377c"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.14.0/trellis-v0.14.0-linux-x64.tar.gz"
      sha256 "9685e271a78d0386146b5e2062c21926b8301751653d42ecad2c9c62c69e2f2b"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
