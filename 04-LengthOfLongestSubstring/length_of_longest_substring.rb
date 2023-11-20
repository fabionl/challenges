# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  chars = s.chars
  size = chars.count

  best = []
  idx = 0
  while idx < size
    char = chars[idx]
    current = [char]
    t = idx + 1

    while t < size
      next_char = chars[t]

      next_pos = current.index(next_char)

      if next_pos.nil?
        # char not included
        current << next_char
      else
        # char has been found
        idx += next_pos

        break
      end

      t += 1
    end

    idx += 1

    next unless current.length > best.length

    best = current
  end

  best.length
end

# pp "Best: #{best}, Current: #{current} Char: #{char} (#{idx}, #{t})"

