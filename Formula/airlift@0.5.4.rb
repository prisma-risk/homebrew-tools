class AirliftAT054 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.4/airlift-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "1ae8a8a68768bea7146a00dc56e64be4dc468182831827ba4a39248d93d88661"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.4/airlift-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "d30587daf1af855a63c3b3a4f8332134e677e21d40253131e0f3f120833b8c2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.4/airlift-v0.5.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05b18084478c5e460a6bc3f9dcec7ccfdcefb222f9df30e24e61bdf77ed35480"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.4/airlift-v0.5.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f17298d2be3cc253e16634289fe91d0ec6dd186f2d1e55792a802167c45033eb"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
