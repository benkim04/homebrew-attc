class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "bf089ee1a0c79e17648b5284dbc4791ab1a1fb1a0c1a1ef602046f7254c492b8"
  license "GPL-2.0"

  depends_on "dune" => :build
  depends_on "ocamlbuild" => :build
  depends_on "opam" => :build
  depends_on "ocaml"

  def install
    ENV.deparallelize
    system "make", "install"
  end

  test do
    system "true"
  end
end
