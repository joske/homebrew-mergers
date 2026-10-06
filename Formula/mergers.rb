class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.8.3"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.8.3/mergers-darwin-aarch64.tar.gz"
  sha256 "177da188776b2f36c168d46e9952176a841b035e66f9e3c2b4c719657bf79d05"

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
