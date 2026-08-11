class AirliftAT021 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.1/airlift-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1d6427a8e46c2f8d90c42f6c71c4e94f5a205cdfca43d10ac1e8a91f051acf22"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.1/airlift-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "b276db85e94b5db7c936827a1d8a73b9a42188685795f4e6461f22ba2b0eee81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.1/airlift-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "971ae90720be00a2415441e0dc8e4e0680f630e56202d1ab34208b3e9eeb2347"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.1/airlift-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7a72cb2d29dcde3a7c9b7fe9626ae7f7dc95cbb98707fd8cdb7c91b13ed7ea3"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
