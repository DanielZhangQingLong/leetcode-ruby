# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  return "" if s.size < t.size
  t_hash = {}
  s_hash = {}
  t.split('').each do |c|
    c_freq = t_hash[c]
    c_freq.nil? ? c_freq = 1 : c_freq += 1
  end
  
  slow = 0
  fast = 0
  min_len = -1
  match_count = 0
  index = -1

  while fast < s.size do
    if t.include? s[slow] && match_count < t.size
      match_count += 1
      index = 0
      fast += 1
    elsif

    end
  end

end

