class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.6.0"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.6.0/mergers-darwin-aarch64.tar.gz"
  sha256 "a5b6287dac43fa057fd2e0a02050c6845bf10e13af5fbb71fee17e5b01e85085"

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
