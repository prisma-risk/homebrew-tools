class Airlift < Formula
  desc "Customer upload utility for Prisma Risk S3 destinations"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/v0.1.0/airlift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe94edb1ddf688934b6027d29314278ab250f57c1c50ff0c3a3410357f61d321"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/v0.1.0/airlift-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c6fed186becc50ef72ae0b173bad0e562e75007ae3bdbb842c1b561e6966ae0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/v0.1.0/airlift-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17ecbe37f9a4c348f97a68caac534f0b4b80fa6c843ae500b2888b741c7759da"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
