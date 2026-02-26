class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.13"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.13/mergers-darwin-aarch64.tar.gz"
  sha256 "07a08eab4d10979e13cd288e80d5995278d5ded4b173591e5cead28541ff552d"

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
