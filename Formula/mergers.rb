class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.8.0"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.8.0/mergers-darwin-aarch64.tar.gz"
  sha256 "7fb9ceee542a60a26798cd85dada6e0b50bc1eedc96e8d82bd8d5b52e3210209"

  depends_on :macos
  depends_on "adwaita-icon-theme"
  depends_on "gtk4"
  depends_on "gtksourceview5"

  def install
    bin.install "mergers"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mergers --version")
  end
end
