class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.8"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.8/mergers-darwin-aarch64.tar.gz"
  sha256 "47f082d0055b51a8b23cd1722165421386c1ecc6c777804dd7ffd59503f0ad6b"

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
