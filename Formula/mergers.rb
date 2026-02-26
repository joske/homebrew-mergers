class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.3.7"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.3.7/mergers-darwin-aarch64.tar.gz"
  sha256 "dced66f5472d439ac0555d3554b34f7a757341e6c81ffbe47a103c951cf0c4c6"

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
