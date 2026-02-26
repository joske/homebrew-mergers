class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.11"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.11/mergers-darwin-aarch64.tar.gz"
  sha256 "50c1b1edafba148fd9a00caaa2d2eff72936b0f0208a2cb1de96ea751824916e"

  depends_on :macos
  depends_on "gtk4"
  depends_on "gtksourceview5"

  def install
    bin.install "mergers"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mergers --version")
  end
end
