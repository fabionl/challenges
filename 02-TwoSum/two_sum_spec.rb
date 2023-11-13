require "spec_helper"
require_relative "./two_sum"

RSpec.describe "two_sum" do
  subject(:result) { two_sum(nums, target) }

  context "Example 1" do
    let(:nums) { [2, 7, 11, 15] }
    let(:target) { 9 }

    it { expect(result).to eq([0, 1]) }
  end

  context "Example 2" do
    let(:nums) { [3, 2, 4] }
    let(:target) { 6 }

    it { expect(result).to eq([1,2]) }
  end

  context "Example 3" do
    let(:nums) { [3,3] }
    let(:target) { 6 }

    it { expect(result).to eq([0,1]) }
  end

  context "Case 1" do
    let(:nums) { [3,2,3] }
    let(:target) { 6 }

    it { expect(result).to eq([0, 2]) }
  end

  context "Case 2" do
    let(:nums) { [3,2,95,4,-3] }
    let(:target) { 92 }

    it { expect(result).to eq([2, 4]) }
  end
end
