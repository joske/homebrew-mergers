class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.7.0"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.7.0/mergers-darwin-aarch64.tar.gz"
  sha256 "2276c7e9ece6291f6a49212bee8a3232d52d68d86fb8415915277de9bf7878f5"

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
