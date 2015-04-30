class Act < ActiveRecord::Base
  def in_units(kind_of_cost, measurement)
    case kind_of_cost
    when "cost"
      "$" * measurement
    when "effort"
      case measurement
      when 1
        "Easy"
      when 2
        "Medium"
      when 3
        "Hard"
      end
    when "time"
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
end
