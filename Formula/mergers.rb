class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.6"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.6/mergers-darwin-aarch64.tar.gz"
  sha256 "b6a821ae1c5fa65c55f582c860536671981be60926b8f2a42dd52b81a1559219"

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
