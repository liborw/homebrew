require 'formula'

class Tog < Formula
  url 'https://github.com/liborw/tog/tarball/0.3'
  homepage 'https://github.com/liborw/tog'
  head 'https://github.com/liborw/tog/tarball/develop'

  if ARGV.include? '--HEAD'
    md5 'cc4cd08e7131972c749e1936991f246d'
  else
    md5 'c2cdabe7d68e1dc25c36f4b02b8c7bfd'
  end

  depends_on 'haskell-platform'

  def install
    system "cabal", "install", "--prefix=#{prefix}", "--user"
  end
end
