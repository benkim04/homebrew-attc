class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "5ca8951f233afa6cdd06044703385ba936575470537720e03f1101f908d019de"
  license "GPL-2.0"

  depends_on "dune" => :build
  depends_on "ocamlbuild" => :build
  depends_on "opam" => :build
  depends_on "ocaml"

  def install
    ENV.deparallelize
    system "make", "home-install"
    bin.install "_build/default/main.exe" => "attc"
  end

  test do
    system "true"
  end
end
