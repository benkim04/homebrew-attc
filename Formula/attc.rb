class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "9f4bf3fcc71782609d462d6a4671a283aed543c43f83c0e29acfe6fc3db423bc"
  license "GPL-2.0"

  depends_on "dune" => :build
  depends_on "ocamlbuild" => :build
  depends_on "ocaml"
  depends_on "opam" => :build

  def install
    ENV.deparallelize
    system "make", "install"
  end

  test do
    system "true"
  end
end
