require 'formula'

class Tog < Formula
  url 'https://github.com/liborw/tog/tarball/0.5.1'
  homepage 'https://github.com/liborw/tog'
  md5 '8c732741bc7c034c9b012b6ef961ad78'

  depends_on 'haskell-platform'

  def install
    system "cabal", "install", "--prefix=#{prefix}", "--user"

    bash_completion_d = etc + 'bash_completion.d'
    bash_completion_d.install 'tog-completion.bash'
  end
end
