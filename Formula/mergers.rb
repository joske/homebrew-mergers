class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.7.3"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.7.3/mergers-darwin-aarch64.tar.gz"
  sha256 "6b4eee56163662656658957563b3246d2c9a1dc8deeede8a014b9d17a41a2c57"

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
