class AirliftAT031 < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.1/airlift-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4b208f3cba5f866a5b335d58a991556ac7ee7dd4ac80d88bfafbd4f9e5870b70"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.1/airlift-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "93a38824473a52bbd19979e0452b5b0ca8a10ee63d923e6867671400dea54ef8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.1/airlift-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f7c05d9f589850cf148e3dfe52ce67bdbea72215aba6bcfe8344103e62b53aaf"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.3.1/airlift-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b86aadc14853a2fa336ae3c0ef88289b8a7607d8c5849cabd908c9730df7681d"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
