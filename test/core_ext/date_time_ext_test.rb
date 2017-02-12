require "test_helper"
require "core_ext/date_and_time_behavior"

class DateTimeExtCalculationsTest < Minitest::Test
  def date_time_init(year, month, day, hour, minute, second, *args)
    DateTime.civil(year, month, day, hour, minute, second)
  end

  include DateAndTimeBehavior
end
