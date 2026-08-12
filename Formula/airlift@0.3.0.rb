class AirliftAT030 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.0/airlift-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba19536f5facc28238c1d5d9bd4610cf23e5225b68250b2d4ae5b29a8c093dad"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.0/airlift-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ccfc74867f562a1666ce9987fcb9330ccd1bccb1e5968ed78261845b82b8339"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.0/airlift-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f67b19934a1956d0d61b806e91b032029bf38eb06fdc506fb2c4c2f211805157"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.0/airlift-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9e72c0cd7c5e09b26ea708d8091b6488af1c0bbf8ebd014c747b60b4b6049df"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
