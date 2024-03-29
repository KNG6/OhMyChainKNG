function chain.links.root
  set -q chain_su_glyph
    or set chain_su_glyph "⚡"

  if test (id -u $USER) -eq 0
    echo cyan
    echo $chain_su_glyph
  end
end
