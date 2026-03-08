class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.7.2"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.7.2/mergers-darwin-aarch64.tar.gz"
  sha256 "048b5e55b99cc762127c684e1cd8dbb9c1befccff4a6e7b50d4d5e9941a81d61"

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
