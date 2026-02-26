class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.12"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.12/mergers-darwin-aarch64.tar.gz"
  sha256 "d55263d1fcea9dc9c178423a85d0ca1baf6b7bc0588621a1edf359be8aea4648"

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
