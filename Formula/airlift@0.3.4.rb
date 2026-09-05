class AirliftAT034 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.4/airlift-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "9498f369b9a968821c81c9db5a93a40d196f6902c4e346a2e3e60a28164ed00a"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.4/airlift-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "a327aae7e830f67ea10727ffe1f063057a9fc9ba205551a1ffa39caa9c753519"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.4/airlift-v0.3.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "089f3a7c35e9c050c0d1aa5586c7dcb6782d6de36faeaa4cb4ab224d1a096eac"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.4/airlift-v0.3.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24431b13b6b7ae22cec11f694d0177fb3ae0475e318a5f4bda44493ab38750a7"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
