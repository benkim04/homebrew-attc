class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "a66ce6d64a6748ff317c23f6a4df023ae337a4c46390db176c943cfc74d75f4e"
  license "GPL-2.0"

  depends_on "opam" => :build
  depends_on "ghostscript"
  depends_on "pandoc"
  depends_on "verapdf"
  depends_on "vips"

  def install
    ENV.deparallelize
    system "brew", "install --cask libreoffice"
    system "make", "brew-install"
    bin.install "_build/default/main.exe" => "attc"
  end

  test do
    system "true"
  end
end
