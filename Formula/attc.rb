class Attc < Formula
  desc "Attachment Converter: tool for batch converting attachments in an email mailbox"
  homepage "https://github.com/benkim04/attachment-converter"
  url "https://github.com/benkim04/attachment-converter/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "cb07bdc8ef660105c01a3104e34297a7e68ecb30e4c227307f21c13a7eb33cb7"
  license "GPL-2.0"

  depends_on "opam" => :build

  def install
    ENV.deparallelize
    system "make", "brew-install"
    bin.install "_build/default/main.exe" => "attc"
  end

  test do
    system "true"
  end
end
