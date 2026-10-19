# Homebrew formula for gitenv. Rendered by packaging/render.sh on each
# release and pushed to github.com/mwala-zm/homebrew-tap; edit the .in file,
# not the copy in the tap.
class Gitenv < Formula
  desc "Terminal UI that keeps you on the right git identity for the repo you're in"
  homepage "https://github.com/mwala-zm/gitenv"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.1.0/gitenv-aarch64-apple-darwin.tar.gz"
      sha256 "9f47c4bcd578fb72688a6823060df9368974da3d76fb74b5d6bb0524e2b6a992"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.1.0/gitenv-x86_64-apple-darwin.tar.gz"
      sha256 "9522da188e266c608c7e8565f00b13edd379761e1509420d0f59e714db9f4dc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.1.0/gitenv-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd49673c28c7760e5ddadc83320200261090bbe5b4bed2fe69b28a185e33ad9c"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.1.0/gitenv-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b68a95ce06a04ca5efed60e206a955560c8ee2ab93eef8c72acf842769442c6c"
    end
  end

  def install
    bin.install "gitenv"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitenv --version")
  end
end
