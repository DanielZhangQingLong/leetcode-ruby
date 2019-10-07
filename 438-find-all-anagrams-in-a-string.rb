# @param {String} s
# @param {String} p
# @return {Integer[]}
# Tn = On
# Sn = O1
def find_anagrams(s, p)
  i = 0
  p_hash = {}
  p.split('').each do |c|
    p_hash[c].nil? ? p_hash[c] = 1 : p_hash[c] += 1
  end
  s_hash = {}
  ret = []
  while i < s.size do
    s_hash[s[i]].nil? ? s_hash[s[i]] = 1 : s_hash[s[i]] +=1
    if p_hash == s_hash
      ret << i - p.size + 1
    end
    if i + 1 >= p.size
      key = s[i - p.size + 1]
      value = s_hash[key]
      if value > 1
        s_hash[key] -= 1
      else
        s_hash.delete(key)
      end
    end
    i += 1
  end
  ret
end

puts find_anagrams("abacbabc", "abc").inspect
