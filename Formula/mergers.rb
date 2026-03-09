class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.7.4"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.7.4/mergers-darwin-aarch64.tar.gz"
  sha256 "3a00fe8314ebbf61ed06406885915e4ade935affb1ea07a67143cf24f152b567"

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
