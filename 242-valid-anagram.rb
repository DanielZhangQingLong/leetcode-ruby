
# @param {String} s
# @param {String} t
# @return {Boolean}
# Tn = On
# Sn = On

def is_anagram(s, t)
  s_hash = Hash.new(0)
  s.each_char {|c| s_hash[c] += 1}
  t_hash = Hash.new(0)
  t.each_char {|c| t_hash[c] += 1}
  s_hash == t_hash
end

puts is_anagram("anagram", "nagaram")