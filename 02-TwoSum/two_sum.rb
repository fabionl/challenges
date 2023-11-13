# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  compliments = {}
  last_idx = nums.count - 1
  for n in (0..last_idx) do
    next_idx = n + 1
    base_num = nums[n]

    compliment_idx = compliments[target - base_num]
    if !compliment_idx.nil?
      potential_num = nums[compliment_idx] + base_num
      return [n, compliment_idx] if compliment_idx > n && (potential_num == target)
    end

    for t in (next_idx..last_idx) do
      current_num = nums[t]

      return [n, t] if (base_num + current_num == target)

      compliments[target - current_num] = t
    end
  end

  return []
end
