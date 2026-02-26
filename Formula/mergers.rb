class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.8"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.8/mergers-darwin-aarch64.tar.gz"
  sha256 "25c53dd9cc5051076251e805a7f8e5c66b49da59d31e563b1062627f29456ae8"

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
