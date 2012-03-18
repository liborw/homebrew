require 'formula'

class Ondir < Formula
  url 'http://swapoff.org/files/ondir/ondir-0.2.2.tar.gz'
  homepage 'http://swapoff.org/ondir.html'
  md5 '892592d33f82f0264f27f63d9df9db75'

  def install
    inreplace 'Makefile', '/man/man1', '/share/man/man1'
    system "make", "PREFIX=#{prefix}", "CONF=#{prefix}/etc/ondirrc", "install"
    prefix.install ["scripts.sh", "scripts.tcsh"]
  end

  def caveats; <<-EOS.undent
    Once you have installed OnDir, add either scripts.sh or scripts.tcsh, located
    in #{prefix}, to your startup. This will execute ondir whenever
    you change directories at the shell.
    EOS
  end

end
