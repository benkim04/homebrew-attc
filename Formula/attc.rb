class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "355326298234daea93f6c9d896714100d839b6a49382532d7a2b2ffdeeda4be3"
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
