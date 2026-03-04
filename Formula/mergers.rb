class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.5.4"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.5.4/mergers-darwin-aarch64.tar.gz"
  sha256 "20887c952656f7e46b9dcdd1eaa3762d4ef789621ebe0182057da34ff0f11f26"

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
