class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.6.1"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.6.1/mergers-darwin-aarch64.tar.gz"
  sha256 "e2d7425cca6a40b413367f81870f80d704065402cda178cd23ecfc6579ba8adc"

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
