class Attc < Formula
  desc "Tool for batch-converting attachments to preservation formats"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/0.1.4.tar.gz"
  sha256 "2f32e6d36ca02fd55c752498ff2af3f638c94268339784fdeccfb32f4f564110"
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
    system "mkdir", "-p", "#{share}/attachment-converter/scripts" 
    system "cp", "#{prefix}/conversion-scripts/*.sh", "#{share}/attachment-converter/scripts"
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
