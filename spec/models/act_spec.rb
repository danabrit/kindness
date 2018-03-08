# == Schema Information
#
# Table name: acts
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  cost        :integer
#  effort      :integer
#  time        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "rails_helper"

RSpec.describe Act, :type => :model do
  describe '#cost_units' do
    it 'returns a number of dollar signs equivalent to the act cost' do
      expect(build(:act, cost: 1).cost_units).to eq('$')
      expect(build(:act, cost: 3).cost_units).to eq('$$$')
    end
  end

  describe '#effort_units' do
    it "returns a word that correlates to an act's effort" do
      expect(build(:act, effort: 1).effort_units).to eq('Easy')
      expect(build(:act, effort: 2).effort_units).to eq('Medium')
      expect(build(:act, effort: 3).effort_units).to eq('Hard')
    end
  end

  describe '#time_units' do
    it "returns a string that correlates to an act's time" do
      expect(build(:act, time: 1).time_units).to eq('Less than one hour')
      expect(build(:act, time: 2).time_units).to eq('1-3 hours')
      expect(build(:act, time: 3).time_units).to eq('More than 3 hours')
    end
  end
end
