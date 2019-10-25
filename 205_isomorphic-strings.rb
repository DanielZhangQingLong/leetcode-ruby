# @param {String} s
# @param {String} t
# @return {Boolean}
# Tn = O(n)
# Sn = Oc c stands for unique count of pattern
def is_isomorphic(s, t)
  return false if s.size != t.size
  s_hsh = {}
  map_val= {}
  s.each_char.with_index do |c, i|
    if s_hsh.include? c
      if s_hsh[c] != t[i]
        return false
      end
    else
      if map_val.include? t[i]
        return false
      end
      map_val[t[i]] = true
      s_hsh[c] = t[i]
    end
  end
  true
end

puts is_isomorphic("ab", "ca")