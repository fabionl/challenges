# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  last_idx = nums.count - 1
  for n in (0..last_idx) do
    next_idx = n + 1
    base_num = nums[n]
    for t in (next_idx..last_idx) do
      current_num = nums[t]

      return [n, t] if (base_num + current_num == target)
    end
  end

  return []
end
