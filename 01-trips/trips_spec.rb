require "spec_helper"
require_relative "./trips.rb"

describe Trip do
  let(:data) { [10, 20, 40, 80, 160, 320] }

  describe "solution" do
    subject(:highest) { described_class.new(data).highest }

    it { expect(highest).to eq(420) }
  end

  describe '#build' do
    subject(:trips) { described_class.new(data).build }

    it { expect(trips).to include([10, 40, 160]) }
    it { expect(trips).to include([10, 40, 320]) }
    it { expect(trips).to include([10, 80, 320]) }
    it { expect(trips).to include([10, 160]) }
    it { expect(trips).to include([10, 320]) }
    it { expect(trips).to include([20, 160]) }
    it { expect(trips).to include([20, 320]) }
    it { expect(trips).to include([40, 160]) }
    it { expect(trips).to include([40, 320]) }
    it { expect(trips).to include([80, 320]) }
  end

  describe "#sum_tips" do
    subject(:trips) { described_class.new(data).sum_trips }

    it { expect(trips).to include(210) }
  end
end
