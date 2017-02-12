require "date"
require "general_time/core_ext/date_and_time/calculations"

class Date
  include DateAndTime::Calculations
end
