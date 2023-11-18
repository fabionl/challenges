# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  chars = s.chars
  size = chars.count

  best = []
  current = []
  i = 0
  while i < size
    char = chars[i]

    if current.include?(char)
      i = i - current.length
      current = []
    else
      current << char
    end

    if current.length > best.length
      best = current
    end

    i += 1
  end

  best.length
end

# pp "Best: #{best}, Current: #{current} Char: #{char} (#{i})"

