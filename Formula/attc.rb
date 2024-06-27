class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "06f1f0a9ff6764e3e7c68a9995dfc2dfaa81937e7396cc870e9f0621b3b5e66a"
  license "GPL-2.0"

  depends_on "dune" => :build
  depends_on "ocamlbuild" => :build
  depends_on "opam" => :build
  depends_on "ocaml"

  def install
    ENV.deparallelize
    system "make", "brew-install", "DESTDIR=#{bin}"
  end

  test do
    system "true"
  end
end
