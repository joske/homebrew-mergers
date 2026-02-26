class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.9"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.9/mergers-darwin-aarch64.tar.gz"
  sha256 "af2ac7798cdadd1e8804145fb0fcf3c9403856e4f75d7d7c7abb387413c061eb"

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
