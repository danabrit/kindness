require "rails_helper"

RSpec.describe Act, :type => :model do
  describe '#cost_units' do
    it 'returns a number of dollar signs equivalent to the act cost' do
      expect(build(:act, cost: 1).cost_units).to eq('$')
      expect(build(:act, cost: 3).cost_units).to eq('$$$')
    end
  end
end
