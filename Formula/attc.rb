class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/0.1.7.tar.gz"
  sha256 "2ffa1ce97d359f354ba732c09960116e34be8c7f0f669a12c19d011224f6fd71"
  license "GPL-2.0"

  depends_on "dune" => :build
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
