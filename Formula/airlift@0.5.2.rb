class AirliftAT052 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.2/airlift-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "acc29a4ead69c22cc7dcf9dd351be22016c59c713f7ef86c00542db67c52b3fd"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.2/airlift-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "96d8a9e8e2f980ff451e197791bb7428e1b6ab1496cce5442bddffbe194e0e49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.2/airlift-v0.5.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dafecd1ae4f97f77d67a1c0618d770ea3bdec2fcac2393716e0e373ac374b02a"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.5.2/airlift-v0.5.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d551a7a49a9de782f16ef9f8e8877638e2f57fb0a74f84327d60b4f87a6eb228"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
