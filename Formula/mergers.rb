class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.8.1"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.8.1/mergers-darwin-aarch64.tar.gz"
  sha256 "a0f5e2d141f56f41d617aa76b8ab7dd6002bcf045bf4ac5b14e196ec2e77e839"

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
