class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.5"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.5/mergers-darwin-aarch64.tar.gz"
  sha256 "1198d60ac0feca8cb017e94d1006259ec65dcf2e6997bf6c433806a976ad07f2"

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
