require 'formula'

class Tog < Formula
  url 'https://github.com/liborw/tog/tarball/0.4'
  homepage 'https://github.com/liborw/tog'
  md5 '131b36e889dba3a8beb43539cfd5b2c8'

  depends_on 'haskell-platform'

  def install
    system "cabal", "install", "--prefix=#{prefix}", "--user"

    bash_completion_d = etc + 'bash_completion.d'
    bash_completion_d.install 'tog-completion.bash'
  end
end
