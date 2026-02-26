class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.4"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.4/mergers-darwin-aarch64.tar.gz"
  sha256 "2a61c8df2f07ddbbda64ece27c37bd716f0604b02d4bd520ca10c763c76ec182"

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
