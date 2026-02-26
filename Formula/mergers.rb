class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.0"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.0/mergers-darwin-aarch64.tar.gz"
  sha256 "b678dd1cb2015a8ac0fa93ccbfa91cac61be17bfecf9a6a4195b8102d7125be7"

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
