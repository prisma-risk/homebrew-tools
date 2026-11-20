class Airlift < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.0/airlift-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "5195348d809ebd7aeb4182130b99d725a724cd38d622e3acd76b7b6c6044d93c"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.0/airlift-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "764d0344a3f7670cd105509fc336f2c3ce08d277896d73d04883e210d06db04c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.0/airlift-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9d02b71ae75959ca4d9589a8e679da54242782982d32c18fd8c06fc17387e3c"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.6.0/airlift-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2636939e67f82d10e672c8a77cb10722c67c6556c265ecec04b34913ed13b528"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
