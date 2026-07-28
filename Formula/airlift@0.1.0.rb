class AirliftAT010 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4a8c7bf6836b36a0a596624ae6bf6e6aeb1e2b4a5a5da4760df51a946be47b27"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5df556dfff0f851c4c8a02c237818a1e79697d0f7f2abdb2a8dad4ee3aad84d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "daee4a0598ae8470a112aa632d84545fcf66d5667f88ad7e0d6bd7aef9943846"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c8fb39be96a590f0b0141b0bcc841d84e5e4bbc91c6acd1de7d8c32fc7a5905"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
