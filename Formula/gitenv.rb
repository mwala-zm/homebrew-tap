# Homebrew formula for gitenv. Rendered by packaging/render.sh on each
# release and pushed to github.com/mwala-zm/homebrew-tap; edit the .in file,
# not the copy in the tap.
class Gitenv < Formula
  desc "Terminal UI that keeps you on the right git identity for the repo you're in"
  homepage "https://github.com/mwala-zm/gitenv"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.0/gitenv-aarch64-apple-darwin.tar.gz"
      sha256 "160a074a0f269ee02a7c1b92dcdada54761fe80af15102371827fd0f26bf47d1"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.0/gitenv-x86_64-apple-darwin.tar.gz"
      sha256 "8ecd15aa6eaa4a2b2440f45a886ad2fe6ab7ee9ae242c5d62e3b779a7d852c98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.0/gitenv-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "984bd7cda75ff8ea60111d4cf5f3d538223fc398eb5de606102721297511c717"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.0/gitenv-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28c68fd8a0515d1760492e8a94a3e1434491049bffe7658076625afa1eff5451"
    end
  end

  def install
    bin.install "gitenv"
    doc.install "README.md"
    generate_completions_from_executable(bin/"gitenv", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitenv --version")
  end
end
