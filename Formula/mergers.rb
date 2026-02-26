class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.3"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.3/mergers-darwin-aarch64.tar.gz"
  sha256 "575d004ca2c755a9eec3ddf9fcb672768337c5e5c1f0c5eedf54bcf77cb500d4"

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
