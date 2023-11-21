# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  merged = nums1 + nums2
  merged.sort!
  size = merged.length

  if size.even?
    pos1 = (size.to_f / 2).floor - 1
    pos2 = pos1 + 1
  else
    pos1 = (size.to_f / 2).floor
    pos2 = pos1
  end

  (merged[pos1] + merged[pos2]).to_f / 2
end

