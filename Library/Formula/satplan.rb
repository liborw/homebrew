require 'formula'

class Satplan < Formula
  homepage 'http://www.cs.rochester.edu/u/kautz/satplan/index.htm'
  url 'http://www.cs.rochester.edu/u/kautz/satplan/SatPlan2006.tgz'
  md5 '681a23d8707c6a2211234a9a036cca17'

  def install
    inreplace 'Makefile', "BIN = $(HOME)/bin", "BIN = #{bin}"
    system "make install"
  end

end
