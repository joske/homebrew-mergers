class Mergers < Formula
  desc "Visual diff and merge tool written in Rust with GTK4"
  homepage "https://github.com/joske/mergers"
  version "0.4.1"
  license "GPL-2.0-only"
  url "https://github.com/joske/mergers/releases/download/v0.4.1/mergers-darwin-aarch64.tar.gz"
  sha256 "00da67f8ba472088060d2d54efaac50c42b24eaba80e8d2e29696c06a2d498ab"

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
