class Trellis < Formula
  desc "CLI for the Trellis template engine: scaffold, build, and serve sites"
  homepage "https://github.com/tolo/trellis"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.12.0/trellis-v0.12.0-macos-arm64.tar.gz"
      sha256 "fdfd1c8a58f6121c902c14dc4b9c0662b912bc54cb0fe3f35a483ffeecb47aee"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.12.0/trellis-v0.12.0-macos-x64.tar.gz"
      sha256 "4091db665c990cb94211b11f02e64ccaf4e8d7516daf0405a771ab84a7fdbf07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/trellis/releases/download/v0.12.0/trellis-v0.12.0-linux-arm64.tar.gz"
      sha256 "861f18b3ea2e72a2173675e4d4767be8c72c5de0b20c7b616d227f078d9f7a0b"
    end
    on_intel do
      url "https://github.com/tolo/trellis/releases/download/v0.12.0/trellis-v0.12.0-linux-x64.tar.gz"
      sha256 "7a6e0428bc656b65336548f195b746c90f21fa9880b4945bc16c1e69bed95607"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/trellis --version")
  end
end
