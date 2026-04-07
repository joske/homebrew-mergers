class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.8.2"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.8.2/mergers-darwin-aarch64.tar.gz"
  sha256 "bf9c7d0d78f5502e129991afc43449a61b77c0982508850a44cc16ff7b759dbe"

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
