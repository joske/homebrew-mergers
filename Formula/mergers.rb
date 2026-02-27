class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.3"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.3/mergers-darwin-aarch64.tar.gz"
  sha256 "182ba74f441b077d9d32e625bcf639c8a95c5c3aa8aec58c746d3aecbcec63d0"

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
