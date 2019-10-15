# @param {String} s
# @param {String} t
# @return {String}
# Tn : On
# Sn : O1
def min_window(s, t)
  return "" if s.size < t.size
  t_hash = {}
  t.split('').each do |c|
    c_freq = t_hash[c]
    c_freq.nil? ? c_freq = 1 : c_freq += 1
    t_hash[c] = c_freq
  end

  max = 4611686018427387903

  slow = 0
  min_len = max
  match_count = 0
  index = 0

  for fast in (0...s.size)
    ch = s[fast]
    count = t_hash[ch]
    next if count.nil?
    t_hash[ch] -= 1
    # match another character
    # 1 -> 0
    match_count += 1 if count == 1

    while match_count == t_hash.size do
      if fast - slow + 1 < min_len
        min_len = fast - slow + 1
        index = slow
      end
      leftmost = s[slow]
      slow += 1
      leftmost_count = t_hash[leftmost]
      if leftmost_count.nil?
        redo
      end
      t_hash[leftmost] += 1
      if leftmost_count == 0
        # 0 -> 1
        match_count -= 1
      end
    end
  end
  min_len == max ? "" : s.slice(index, min_len)
end

puts min_window("a",  "a")

