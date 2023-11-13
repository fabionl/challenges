# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  last_idx = nums.count - 1
  prev_num = nums[0]
  for n in (1..last_idx) do
    current_num = nums[n]
    return [n - 1, n] if (prev_num + current_num == target)

    prev_num = nums[n]
  end
end
