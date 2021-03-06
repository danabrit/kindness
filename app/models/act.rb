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

class Act < ActiveRecord::Base
  def cost_units
    "$" * cost
  end

  def effort_units
    case effort
    when 1
      "Easy"
    when 2
      "Medium"
    when 3
      "Hard"
    end
  end

  def time_units
    case time
    when 1
      "Less than one hour"
    when 2
      "1-3 hours"
    when 3
      "More than 3 hours"
    end
  end
end
