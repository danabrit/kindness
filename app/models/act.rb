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

  def time_units(measurement)
    case measurement
    when 1
      "Less than one hour"
    when 2
      "1-3 hours"
    when 3
      "More than 3 hours"
    end
  end
end
