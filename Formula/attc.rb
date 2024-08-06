class Attc < Formula
  desc "Tool for batch-converting attachments to preservation formats"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/0.1.19.tar.gz"
  sha256 "67d11864607b51eca84751855bf74f92665e98b3bc29fdefba2d365ed817539d"
  license "GPL-2.0"

  depends_on "opam" => :build
  depends_on "ghostscript"
  depends_on "mercurial"
  depends_on "pandoc"
  depends_on "verapdf"
  depends_on "vips"

  def install
    ENV.deparallelize
    system "make", "pkg-build"
    bin.install "_build/default/main.exe" => "attc"
    lib.install Dir["conversion-scripts/*"]
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
