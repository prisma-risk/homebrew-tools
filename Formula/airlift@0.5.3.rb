class AirliftAT053 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.3/airlift-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "13839ab377f5030c64a46122b1a66cb9adf4293548aa2ce0d030e6f606cb25c1"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.3/airlift-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "0529b4dded58bd484b3f371597f98cc94237c2bc2dbcc82f10cb98c0691fe4be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.3/airlift-v0.5.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e642ffafaddc9ea4a95a98ad6cba0d5c80e533bdf8b650845880e2401d2b90b8"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.3/airlift-v0.5.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31869728040fbfe9b4cd55df3523a0f93641dbf9cce4768cfdd913c8e88b674a"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
