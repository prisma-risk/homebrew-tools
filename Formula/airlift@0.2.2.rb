class AirliftAT022 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.2/airlift-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "5b2809a17eea0b02ee3bdf927b350e7da188ba277e04dba22e012d747e9963a3"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.2/airlift-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "c693d3e92cdee3661576b47a026cd1f5df19b43ecbce72d66685fa7af7f27b70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.2/airlift-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5159cd28c4f89655f1cf3435f00e1285214744f8de639536d2b263badeb72ec2"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.2/airlift-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d25b3c558bd0fc008ba168ab69bd06bb4dff6f999a1b412570190a753ec620e"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
