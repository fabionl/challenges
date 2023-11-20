# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  chars = s.chars
  size = chars.count

  best = []
  chars.each_with_index do |char, idx|
    current = [char]
    t = idx + 1

    while t < size
      next_char = chars[t]
      break if current.include?(next_char)

      current << next_char
      t += 1
    end

    next unless current.length > best.length

    best = current
  end

  best.length
end

# pp "Best: #{best}, Current: #{current} Char: #{char} (#{i})"

