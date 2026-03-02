class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.5"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.5/mergers-darwin-aarch64.tar.gz"
  sha256 "a247a8045c7fe7a28903a5955ba2ec072f1b4a7f13e53942e03587c1ba22ce23"

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
