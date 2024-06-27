class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "99859bdf716c74bb70b91447d8cd3a67687998d09113c7dafa97ecd13278b925"
  license "GPL-2.0"

  depends_on "dune" => :build
  depends_on "ocamlbuild" => :build
  depends_on "opam" => :build
  depends_on "ocaml"

  def install
    ENV.deparallelize
    system "make", "brew-install"
    bin.install "_build/default/main.exe" => "attc"
  end

  test do
    system "true"
  end
end
