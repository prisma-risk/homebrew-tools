class AirliftAT032 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.2/airlift-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "18bcd3f99f5b691d429ca285a80ee720610ce6921ea93644f887c1af8501b347"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.2/airlift-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "008c94cb1720d02ca3ea4f66210d107c4a01f7d474f26513d68004f26d4a1e12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.2/airlift-v0.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95f6858f5a79f7bf9954c0a7b21a7653c6751188762e341fb2206db5ad355705"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.2/airlift-v0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b986264f5e5e63a1b6d8dd2e53577a7177fc9120df39402ee09a674cf37778bd"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
