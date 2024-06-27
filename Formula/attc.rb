class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "6cecd7175c76638abc158e5beb7e2815400a1eb90b41d038dbb6eea00e1bc161"
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
