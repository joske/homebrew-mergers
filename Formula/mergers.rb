class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.6"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.6/mergers-darwin-aarch64.tar.gz"
  sha256 "8f37b8079c21fde2d26974ce9a72087393223fad927071079bdca4e0e6518cf3"

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
