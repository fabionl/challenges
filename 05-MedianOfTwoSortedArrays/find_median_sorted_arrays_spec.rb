require "spec_helper"
require_relative "./find_median_sorted_arrays"

RSpec.describe "find_median_sorted_arrays" do
  subject(:result) { find_median_sorted_arrays(nums1, nums2) }

  context "Example 1" do
    let(:nums1) { [1, 3] }
    let(:nums2) { [2] }

    it { expect(result).to eq(2) }
  end

  context "Example 2" do
    let(:nums1) { [1, 2] }
    let(:nums2) { [3, 4] }

    it { expect(result).to eq(2.5) }
  end


end
