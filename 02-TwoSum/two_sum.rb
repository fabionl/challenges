# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  compliments = {}
  last_idx = nums.count - 1
  nums.each_with_index do |current, i|
    compliments[current] = i
  end

  for n in (0..last_idx) do
    next_idx = n + 1
    current_num = nums[n]

    compliment_idx = compliments[target - current_num]
    next if compliment_idx.nil?

    potential_num = nums[compliment_idx] + current_num
    return [n, compliment_idx] if compliment_idx > n && (potential_num == target)
  end

  return []
end
