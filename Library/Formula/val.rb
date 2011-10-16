require 'formula'

class Val < Formula
  url 'http://planning.cis.strath.ac.uk/VAL/VAL-4.2.08.tgz'
  homepage 'http://planning.cis.strath.ac.uk/VAL/'
  md5 '9586bb02921d6454d697965a5d448693'


  def install
    system "make validate"
    bin.install 'validate'
  end

  def test
    system "validate"
  end
end
