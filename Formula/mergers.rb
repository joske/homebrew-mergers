class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.5.3"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.5.3/mergers-darwin-aarch64.tar.gz"
  sha256 "9960fbbab5554bc3e109f8587bcb2e505e9fd101410d2f9bba8ed07a4ebb1de2"

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
