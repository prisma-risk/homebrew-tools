class AirliftAT061 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.1/airlift-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "1596a804c4c4b18539abf877f9295107f3d8858e84dce72703f78bf0c33f4044"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.1/airlift-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "32672995354e6f7a164967482715bec931da06a97e7393e99acecf90f2b55fc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.1/airlift-v0.6.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81872dcc877defba1522cc3a387095c3aaeb2a350a805514f4f56c2589c91ca6"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.1/airlift-v0.6.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8424400f8ffc5d41f67b952b5abc6877b025e859be0d305e5962b641d212390b"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
