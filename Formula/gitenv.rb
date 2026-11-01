# Homebrew formula for gitenv. Rendered by packaging/render.sh on each
# release and pushed to github.com/mwala-zm/homebrew-tap; edit the .in file,
# not the copy in the tap.
class Gitenv < Formula
  desc "Terminal UI that keeps you on the right git identity for the repo you're in"
  homepage "https://github.com/mwala-zm/gitenv"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.1/gitenv-aarch64-apple-darwin.tar.gz"
      sha256 "cca62f9104e5d6cfd70ac950872933390255d94d244f9eec1461e396d308bae6"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.1/gitenv-x86_64-apple-darwin.tar.gz"
      sha256 "f0ab3b9453c9e60b0a136fcf546431e13d107d97150ad04c21584bdd54895c79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.1/gitenv-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47be609e7f74ec93e451590128d84e3421bfc15b3313636a2626c2848cb28f70"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.1/gitenv-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9bc166e82208d7fa978ebe747d2af18b18570e811d26bc84a3d93878be64eadb"
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
