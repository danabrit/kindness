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

FactoryBot.define do
  factory :act do
    sequence(:name) { |n| "Act #{n}" }
  end
end
