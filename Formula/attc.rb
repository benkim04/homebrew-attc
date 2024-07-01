class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "b8bd6c1e5fb775782860270adbd91162999b7d2ca7613f0d7156ca114e972f2b"
  license "GPL-2.0"

  depends_on "opam" => :build
  depends_on "ghostscript"
  depends_on "mercurial"
  depends_on "pandoc"
  depends_on "verapdf"
  depends_on "vips"

  def install
    ENV.deparallelize
    system "make", "brew-install"
    bin.install "_build/default/main.exe" => "attc"
  end

  def caveats
    <<~EOS
      Attachment Converter depends on LibreOffice for some functionality.

      Please install it using:
        brew install --cask libreoffice
    EOS
  end

  test do
    system "true"
  end
end
