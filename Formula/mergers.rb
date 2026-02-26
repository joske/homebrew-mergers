class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.2"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.2/mergers-darwin-aarch64.tar.gz"
  sha256 "ef57574793685aa769a51f79b85eb9eb72ab8c447914484c97e6215b42143104"

  depends_on :macos
  depends_on "gtk4"
  depends_on "gtksourceview5"

  def install
    bin.install "mergers"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mergers --version")
  end
end
