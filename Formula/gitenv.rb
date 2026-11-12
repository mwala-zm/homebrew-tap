# Homebrew formula for gitenv. Rendered by packaging/render.sh on each
# release and pushed to github.com/mwala-zm/homebrew-tap; edit the .in file,
# not the copy in the tap.
class Gitenv < Formula
  desc "Terminal UI that keeps you on the right git identity for the repo you're in"
  homepage "https://github.com/mwala-zm/gitenv"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.1/gitenv-aarch64-apple-darwin.tar.gz"
      sha256 "be334dff67e119e11b9122a9c505e5091bdb3aa8d2e25b7f175841b935dd4457"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.1/gitenv-x86_64-apple-darwin.tar.gz"
      sha256 "a5116a18464ffd2807170b1b8069e625706a24614633d440db9dff8f6146fdab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.1/gitenv-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8825543eb01cbc78adaecade77b3fa9dcb89d764bd8faf713ea8d4cd2a1b44af"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.4.1/gitenv-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab12afe6ba8457970129fa339bf0a3f6d07b37409c38a260d54a758d1ac1c9e7"
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
