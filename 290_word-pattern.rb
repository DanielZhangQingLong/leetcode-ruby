# @param {String} pattern
# @param {String} str
# @return {Boolean}
# Tn = On
# Sn = Oc c stands for unique count of pattern
def word_pattern(pattern, str)
  p_hsh = {}
  map_val = {}
  str_arr = str.split(" ")
  return false if pattern.size != str_arr.size
  pattern.each_char.with_index do |c, i|
    if p_hsh.include? pattern[i]
      if p_hsh[pattern[i]] != str_arr[i]
        return false
      end
    else
      if map_val.include? str_arr[i]
        return false
      end
      p_hsh[pattern[i]] = str_arr[i]
      map_val[str_arr[i]] = true
    end
  end
  true
end

puts word_pattern( "abba", "dog cat cat dog")