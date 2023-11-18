require "spec_helper"
require_relative "./length_of_longest_substring"

RSpec.describe "length_of_longest_substring" do
  subject(:result) { length_of_longest_substring(input) }

  describe "Example 1" do
    let(:input) { "abcabcbb" }

    it { expect(result).to eq(3) }
  end

  describe "Example 2" do
    let(:input) { "bbbbb" }

    it { expect(result).to eq(1) }
  end

  describe "Example 3" do
    let(:input) { "pwwkew" }

    it { expect(result).to eq(3) }
  end

  describe "Case 1" do
    let(:input) { " " }

    it { expect(result).to eq(1) }
  end

  describe "Case 2" do
    let(:input) { "dvdf" }

    it { expect(result).to eq(3) }
  end
  
  describe "Case 3" do
    let(:input) { "aab" }

    it { expect(result).to eq(2) }
  end

end
