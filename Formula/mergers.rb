class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.5.0"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.5.0/mergers-darwin-aarch64.tar.gz"
  sha256 "cfe4bc73e5b91388cf8e9b076b2910347d61285c39c392e530afff35f8c9469b"

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
