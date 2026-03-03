class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.5.2"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.5.2/mergers-darwin-aarch64.tar.gz"
  sha256 "7071a57c0d9dada59a646a42dea89043f93a44f08b0c711d229f72fa28785a54"

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
