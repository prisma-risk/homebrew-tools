class AirliftAT020 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.0/airlift-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9cb28372f53f59258ccd5dbf8282dc10c663997c34f7b1121004506126e79066"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.0/airlift-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "703241ce2151e75099495bc04646a6d563834bc30499ed4d67eb75053796d7c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.0/airlift-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb6bbadfcae6206343e4d036da676417a0e5126fe4ac5a1b4c7ca20db3433c53"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.2.0/airlift-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5eae7c762e5fd1ce7eaeb4c9e1f5ff862bde510cf8e0342cc59808bfc93b342f"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
