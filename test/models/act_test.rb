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

require 'test_helper'

class ActTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
