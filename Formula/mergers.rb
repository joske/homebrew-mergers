class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.7.1"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.7.1/mergers-darwin-aarch64.tar.gz"
  sha256 "66835b562c5305cc6fda4aee27cc198ef068b1547a4c230bc754a631c9ce8fb7"

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
