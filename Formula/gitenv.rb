# Homebrew formula for gitenv. Rendered by packaging/render.sh on each
# release and pushed to github.com/mwala-zm/homebrew-tap; edit the .in file,
# not the copy in the tap.
class Gitenv < Formula
  desc "Terminal UI that keeps you on the right git identity for the repo you're in"
  homepage "https://github.com/mwala-zm/gitenv"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.0/gitenv-aarch64-apple-darwin.tar.gz"
      sha256 "a6ed2bf5fac6646ecb83b6376beda9407f1fa7d00c0647365edcfd242d57a952"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.0/gitenv-x86_64-apple-darwin.tar.gz"
      sha256 "bdbacbb9a10f285abd704ba89677303fd55a89ca2027bfb86da563e60872b16e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.0/gitenv-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55d544eb96044052f77a3f8b1e119cf41f681ac36442295e488112ce8735195b"
    end
    on_intel do
      url "https://github.com/mwala-zm/gitenv/releases/download/v0.2.0/gitenv-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dea8535204f2e5d57110a0b70d272e28c575e9c5a5d62e6cd3e8a733d5b1578d"
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
