class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.10"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.10/mergers-darwin-aarch64.tar.gz"
  sha256 "518aecd144c6645b0af81318ba22221366055977f39446b940069bdb9e88ce62"

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
