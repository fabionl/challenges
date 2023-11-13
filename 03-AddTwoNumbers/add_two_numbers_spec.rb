require "spec_helper"
require_relative "./add_two_numbers"

RSpec.describe "add_two_numbers" do
  subject(:result) { add_two_numbers(l1_digit, l2_digit) }

  let(:l1_digit) { l1[0] }
  let(:l2_digit) { l2[0] }

  context "Example 1" do
    let(:l1) { build_list([2,4,3]) }
    let(:l2) { build_list([5,6,4]) }

    it { expect(result).to eq([7, 0, 8]) }
  end

  context "Example 2" do
    let(:l1) { build_list([0]) }
    let(:l2) { build_list([0]) }

    it { expect(result).to eq([0]) }
  end

  context "Example 3" do
    let(:l1) { build_list([9,9,9,9,9,9,9]) }
    let(:l2) { build_list([9,9,9,9]) }

    it { expect(result).to eq([8,9,9,9,0,0,0,1]) }
  end

  def build_list(digits_array)
    result = []
    prev_digit = nil
    digits_array.each_with_index do |digit, idx|
      digit = ListNode.new(digit)

      prev_digit.next = digit unless prev_digit.nil?

      result << digit

      prev_digit = digit
    end
    result
  end
end
