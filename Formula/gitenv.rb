# Homebrew formula for gitenv. Rendered by packaging/render.sh on each
# release and pushed to github.com/mwala-zm/homebrew-tap; edit the .in file,
# not the copy in the tap.
class Gitenv < Formula
  desc "Terminal UI that keeps you on the right git identity for the repo you're in"
  homepage "https://github.com/mwala-zm/gitenv"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.3.0/gitenv-aarch64-apple-darwin.tar.gz"
      sha256 "ebc184e8b19f4ad7239eb81282684ed68139fd94383021b86917687cec006c27"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.3.0/gitenv-x86_64-apple-darwin.tar.gz"
      sha256 "075cc53a6d6b5f7a7697292ece3c5d79156b5dc34811d1690404f9c44c1b3e9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.3.0/gitenv-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50c61ac2bc9a7a4cbd6d65b77018d6c81f7dc2497cbcaaba6743d607e21a3677"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.3.0/gitenv-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad9c32a19c90e6bf405295351eeaeed60cbc0df2722bd4b52fcbcc12a73e7961"
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
