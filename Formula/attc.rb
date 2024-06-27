class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "e2d58aac840143e353a89bde9c6a87c02cc4c2ed3b654413d6e3eacee5d2bd26"
  license "GPL-2.0"

  depends_on "dune" => :build
  depends_on "ocamlbuild" => :build
  depends_on "opam" => :build
  depends_on "ocaml"

  def install
    ENV.deparallelize
    system "make", "brew-install"
  end

  test do
    system "true"
  end
end
