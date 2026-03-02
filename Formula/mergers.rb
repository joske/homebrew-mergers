class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.7"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.7/mergers-darwin-aarch64.tar.gz"
  sha256 "0f5ca9c4f95730de91a13eaed5dd540c7ff3308c00d661406a22ec7c26601d39"

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
