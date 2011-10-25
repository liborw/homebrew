require 'formula'

class Timelog < Formula
  url 'https://github.com/liborw/timelog/tarball/0.2'
  homepage 'https://github.com/liborw/timelog'
  md5 '2c344cf8a0a0e6bf316e585ea4c2224a'
  head 'https://liborw@github.com/liborw/timelog.git'
  
  depends_on 'ghc'

  def install
    system 'ghc', 'timelog.hs'
    bin.install timelog
  end
end
