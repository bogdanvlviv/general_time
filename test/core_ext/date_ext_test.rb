require "test_helper"
require "core_ext/date_and_time_behavior"

class DateExtCalculationsTest < Minitest::Test
  def date_time_init(year, month, day, *args)
    Date.new(year, month, day)
  end

  include DateAndTimeBehavior
end
