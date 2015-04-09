require 'formula'

class Vsql < Formula
  homepage 'https://my.vertica.com'
  url 'https://s3.amazonaws.com/myverticablog/vertica-client-6.1.0-0.mac.tar.gz'
  sha1 '32a06c0b38e531f464d6e3925f07cbc4944bf7b4'

  def install
    bin.install 'vertica/bin/vsql'
    lib.install Dir['vertica/lib/*']
  end

  test do
    system "#{bin}/vsql"
  end
end
