class Airlift < Formula
  desc "Prisma Risk upload utility"
  homepage "https://github.com/prisma-risk/homebrew-tools"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c3d64b3ac32c4147a704846cb7431289180e5fe3b8ff519a8845e65486fbafb"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6fe63f3c562101418f487bf94bcf544fd53ff3b1004e5e6306e9a6975c242746"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e411c328ae8e0b1752b8f36a05d5669670ad314edd571dc7acfcfc21e0d7e06e"
    end
    on_intel do
      url "https://github.com/prisma-risk/homebrew-tools/releases/download/airlift-v0.1.0/airlift-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a685bce5f00df386458cb60c9acaa1226465fb91c0c4fc25288c175d6af6a8bc"
    end
  end

  def install
    bin.install "airlift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/airlift --version")
  end
end
